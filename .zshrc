# --- History settings ---
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
# Append history immediately (don't wait for session exit)
setopt INC_APPEND_HISTORY
# Share history between different tabs/windows
setopt SHARE_HISTORY
# Keep history cleaner
setopt HIST_IGNORE_DUPS

# --- Autocomplete & Highlighting ---
autoload -Uz compinit && compinit
# Case insensitive matching (so "cd doc" matched "Documents")
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
# Use a menu to select items when hit tab
zstyle ':completion:*' menu select

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#7f848e' # slightly lighter than Atom One comment, it looks better

# Enable vi mode
bindkey -v

# --- Integrations ---
# Prompt (Starship)
eval "$(starship init zsh)"

# iTerm2 integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
