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

# Other
setopt prompt_subst
autoload -U compinit; compinit
autoload -U +X bashcompinit && bashcompinit


0=${(%):-%N}
this_dir="$(dirname "$(readlink -f "$0")")"

# Plugins
source "${this_dir}/zsh/plugins/load_plugins.zsh"

# Theme
source "${this_dir}/zsh/theme/load_theme.zsh"

# Aliases
if [ -f "${this_dir}/.zsh_aliases" ]; then
    source "${this_dir}/.zsh_aliases"
fi

# Keybindings
bindkey ";5C" forward-word
bindkey ";5D" backward-word

# NPM Stuff
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export DOTNET_CLI_TELEMETRY_OPTOUT=1
