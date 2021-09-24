#!/bin/zsh

zfunc_path="${ZDOTDIR:-$HOME}/.zfunctions"

if [ ! -d "${zfunc_path}/" ]; then
	mkdir -p "${zfunc_path}/"
fi

fpath=( $zfunc_path $fpath )

0=${(%):-%N}

if [ ! -f "${zfunc_path}/prompt_spaceship_setup" ]; then
	ln -sf "${0:A:h}/spaceship-prompt/spaceship.zsh" "${zfunc_path}/prompt_spaceship_setup"
fi
