
fpath=( "${ZDOTDIR:-$HOME}/.zfunctions" $fpath )

autoload -U promptinit; promptinit
prompt spaceship

0=${(%):-%N}
set -o allexport; source "${0:A:h}/options.env"; set +o allexport
