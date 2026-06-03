# --- History settings ---
HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=50000
# Share history between different tabs/windows
setopt SHARE_HISTORY
# Keep history cleaner
setopt HIST_IGNORE_DUPS
# Commands starting with space won't be saved
setopt HIST_IGNORE_SPACE
# Remove extra whitespace from history
setopt HIST_REDUCE_BLANKS

# --- Autocomplete & Highlighting ---
autoload -Uz compinit && compinit
# Case insensitive matching (so "cd doc" matched "Documents")
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
# Use a menu to select items when hit tab
zstyle ':completion:*' menu select

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#7f848e' # slightly lighter than Atom One comment, it looks better

# Accept autosuggestions with Ctrl+Space or Ctrl+F
bindkey '^ ' autosuggest-accept
bindkey '^F' autosuggest-accept-word
# Regular history search shortcut
bindkey '^R' history-incremental-search-backward

# Move between directories without typing cd
setopt AUTO_CD

# --- Integrations ---

# Prompt (Starship)
eval "$(starship init zsh)"

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# iTerm2 integration
[[ -r "${HOME}/.iterm2_shell_integration.zsh" ]] && source "${HOME}/.iterm2_shell_integration.zsh"

# Local overrides and extensions
[[ -r "${HOME}/.zshrc.local" ]] && source "${HOME}/.zshrc.local"
