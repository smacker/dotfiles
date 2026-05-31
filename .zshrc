# --- History settings ---
HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=50000
# Append history immediately (don't wait for session exit)
setopt INC_APPEND_HISTORY
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

# Cache brew prefix once for performance
BREW_PREFIX=$(brew --prefix)
source $BREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $BREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#7f848e' # slightly lighter than Atom One comment, it looks better

# Accept autosuggestions with Ctrl+Space or Ctrl+F
bindkey '^ ' autosuggest-accept
bindkey '^F' autosuggest-accept-word
# Regular history search shortcut
bindkey '^R' history-incremental-search-backward

# --- Integrations ---
# Prompt (Starship)
eval "$(starship init zsh)"

# iTerm2 integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

