#!/bin/zsh

this_dir="$(dirname "$(readlink -f "$0")")"

if [ ! -f "${HOME}/.zshrc" ]; then
	ln -sf "${this_dir}/.zshrc" "${HOME}/.zshrc"
fi

"${this_dir}/zsh/theme/install_theme.zsh"


