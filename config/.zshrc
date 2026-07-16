# ======================
# ZSH CONFIG
# ======================

# Avvia Fastfetch all'apertura
if [ -x "$(command -v fastfetch)" ]; then
    fastfetch
fi

# Inizializza il prompt Starship
eval "$(starship init zsh)"

# History
HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt appendhistory
setopt sharehistory
setopt histignoredups

# ======================
# Completion
# ======================

autoload -Uz compinit

# zsh-completions
fpath=(/usr/share/zsh/site-functions $fpath)

compinit


# Shortcuts
bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word
bindkey "^[b" backward-word
bindkey "^[f" forward-word

# ======================
# Syntax Highlighting
# ======================

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
