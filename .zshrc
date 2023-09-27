# History
[ -z "" ] && HISTFILE="$HOME/.zsh_history"
HISTSIZE=50000
SAVEHIST=10000
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt inc_append_history
setopt share_history

# Changing directories
setopt auto_cd
setopt auto_pushd
unsetopt pushd_ignore_dups
setopt pushdminus

# Completion
setopt auto_menu
setopt always_to_end
setopt complete_in_word
unsetopt flow_control
unsetopt menu_complete
zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z-_}={A-Za-z_-}' 'r:|=*' 'l:|=* r:|=*'
zstyle ':completion::complete:*' use-cache 1
zstyle ':completion::complete:*' cache-path
zstyle ':completion:*' list-colors ''
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;34=0=01'
zstyle ':completion:*:*:make:*' tag-order 'targets'

# Other
setopt prompt_subst


0=${(%):-%N}
this_dir="$(dirname "$(readlink -f "$0")")"

# Scripts
scripts_dir="${this_dir}/scripts/"
if ! $( echo "$PATH" | tr ":" "\n" | grep -qx "$scripts_dir" ) ; then
    PATH="$PATH:$scripts_dir"
fi

# Aliases
if [ -f "${this_dir}/.zsh_aliases" ]; then
    source "${this_dir}/.zsh_aliases"
fi

# Plugins
source "${this_dir}/zsh/plugins/load_plugins.zsh"

# Completions
source "${this_dir}/zsh/completions/load_completions.zsh"

# Theme
source "${this_dir}/zsh/theme/load_theme.zsh"

# Environment Variables
if [ -f "${this_dir}/.env" ]; then
    set -o allexport; source "${this_dir}/.env"; set +o allexport
fi

# Keybindings
bindkey ";5C" forward-word
bindkey ";5D" backward-word

# Profile
if [ -f "$HOME/.zprofile" ]; then
    source "$HOME/.zprofile"
fi
