#!/usr/bin/env bash
set -euo pipefail

umask 077

###############################################################################
# Bitwarden manual backup script for macOS
#
# Requirements:
#   brew install bitwarden-cli
#
# Optional:
#   Google Drive desktop client installed and syncing
#   Dropbox desktop client installed and syncing
#
###############################################################################

############################
# EDIT THESE VALUES
############################

# Your Bitwarden email.
BW_EMAIL="max@smacker.ru"

# Local temporary export directory.
LOCAL_STAGING_DIR="$HOME/BitwardenBackups"

# Google Drive local sync folder.
# Common examples:
#   "$HOME/Library/CloudStorage/GoogleDrive-your.email@gmail.com/My Drive/Backups/Bitwarden"
#   "$HOME/Google Drive/My Drive/Backups/Bitwarden"
GOOGLE_DRIVE_BACKUP_DIR="$HOME/Library/CloudStorage/GoogleDrive-max@smacker.ru/My Drive/Backups/Bitwarden"

# Dropbox local sync folder.
DROPBOX_BACKUP_DIR="$HOME/Dropbox/Backups/Bitwarden"

# NAS mount point on macOS.
NAS_MOUNT_POINT="/Volumes/documents"

# NAS backup folder inside the mounted share.
NAS_BACKUP_DIR="$NAS_MOUNT_POINT/Backups/Bitwarden"

# NAS share URL.
#
# SMB examples:
#   smb://username@nas.local/backups
#   smb://username@192.168.1.10/backups
#
# AFP example, if you still use AFP:
#   afp://username@nas.local/backups
#
NAS_SHARE_URL="smb://smacker@nas/documents"

############################
# DO NOT EDIT BELOW
############################

timestamp() {
  date -u +"%Y-%m-%dT%H-%M-%SZ"
}

fail() {
  echo "ERROR: $*" >&2
  exit 1
}

require_command() {
  command -v "$1" >/dev/null 2>&1 || fail "Missing command: $1"
}

is_mounted() {
  mount | grep -q " on ${NAS_MOUNT_POINT} "
}

mount_nas_if_needed() {
  if is_mounted; then
    echo "NAS already mounted at ${NAS_MOUNT_POINT}"
    return
  fi

  echo "NAS is not mounted. Trying to mount ${NAS_SHARE_URL} at ${NAS_MOUNT_POINT}..."

  mkdir -p "$NAS_MOUNT_POINT"

  # This opens the normal macOS authentication prompt / Keychain flow if needed.
  open "$NAS_SHARE_URL"

  echo "Waiting for NAS mount..."

  for _ in {1..30}; do
    if is_mounted; then
      echo "NAS mounted."
      return
    fi
    sleep 1
  done

  fail "NAS did not mount at ${NAS_MOUNT_POINT}. Mount it manually once, save credentials to Keychain, then rerun."
}

ensure_dir() {
  mkdir -p "$1" || fail "Could not create directory: $1"
}

copy_backup() {
  local src="$1"
  local dest_dir="$2"
  local label="$3"

  ensure_dir "$dest_dir"

  echo "Copying backup to ${label}: ${dest_dir}"
  cp -p "$src" "$dest_dir/" || fail "Failed copying to ${label}"
}

main() {
  require_command bw
  require_command open
  require_command mount
  require_command grep
  require_command cp

  ensure_dir "$LOCAL_STAGING_DIR"

  echo "Enter your Bitwarden master password."
  echo "It will be used both to unlock Bitwarden and as the encrypted export password."
  read -rs MASTER_PASSWORD
  echo

  [[ -n "$MASTER_PASSWORD" ]] || fail "Master password cannot be empty."

  STATUS="$(bw status 2>/dev/null || true)"

  if ! echo "$STATUS" | grep -q '"status":"unauthenticated"'; then
    echo "Bitwarden CLI appears to be logged in already."
  else
    echo "Logging in to Bitwarden as ${BW_EMAIL}..."
    bw login "$BW_EMAIL"
  fi

  echo "Unlocking Bitwarden vault..."

  # Bitwarden CLI supports --raw to return a session token for scripting.
  # Docs describe using the session token for subsequent commands.
  BW_SESSION="$(printf '%s\n' "$MASTER_PASSWORD" | bw unlock --raw)"
  export BW_SESSION

  [[ -n "$BW_SESSION" ]] || fail "Could not unlock vault or obtain BW_SESSION."

  echo "Syncing Bitwarden vault..."
  bw sync --session "$BW_SESSION" >/dev/null

  BACKUP_FILE="${LOCAL_STAGING_DIR}/bitwarden-vault-$(timestamp).json"

  echo "Exporting password-protected encrypted JSON backup..."

  # Current Bitwarden CLI versions may require --password for encrypted exports.
  # We avoid interactive password prompts so the script can reuse the password
  # you entered once at the beginning.
  bw export \
    --format encrypted_json \
    --password "$MASTER_PASSWORD" \
    --output "$BACKUP_FILE" \
    --session "$BW_SESSION" >/dev/null

  [[ -s "$BACKUP_FILE" ]] || fail "Export failed or produced an empty file."

  echo "Backup created:"
  echo "$BACKUP_FILE"

  mount_nas_if_needed

  copy_backup "$BACKUP_FILE" "$NAS_BACKUP_DIR" "NAS"
  copy_backup "$BACKUP_FILE" "$GOOGLE_DRIVE_BACKUP_DIR" "Google Drive"
  copy_backup "$BACKUP_FILE" "$DROPBOX_BACKUP_DIR" "Dropbox"

  echo "Locking Bitwarden CLI session..."
  bw lock --session "$BW_SESSION" >/dev/null 2>&1 || true

  unset MASTER_PASSWORD
  unset BW_SESSION

  echo
  echo "Done. Backup copied to NAS, Google Drive, and Dropbox."
}

main "$@"
