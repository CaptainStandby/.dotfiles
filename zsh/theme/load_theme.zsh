
fpath=( "${ZDOTDIR:-$HOME}/.zfunctions" $fpath )

autoload -U promptinit; promptinit
prompt spaceship

SPACESHIP_TIME_SHOW=true
