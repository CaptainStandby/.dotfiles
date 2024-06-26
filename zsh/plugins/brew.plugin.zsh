if (( ! $+commands[brew] )); then
	if [[ -x /opt/homebrew/bin/brew ]]; then
		BREW_LOCATION="/opt/homebrew/bin/brew"
	elif [[ -x /usr/local/bin/brew ]]; then
		BREW_LOCATION="/usr/local/bin/brew"
	elif [[ -x /home/linuxbrew/.linuxbrew/bin/brew ]]; then
		BREW_LOCATION="/home/linuxbrew/.linuxbrew/bin/brew"
	elif [[ -x "$HOME/.linuxbrew/bin/brew" ]]; then
		BREW_LOCATION="$HOME/.linuxbrew/bin/brew"
	else
		return
	fi

	eval "$("$BREW_LOCATION" shellenv)"
	unset BREW_LOCATION
fi

brew_cmd="${commands[brew]}"
if [ -x "$brew_cmd" ]; then
	FPATH="$($brew_cmd --prefix)/share/zsh/site-functions:${FPATH}"
fi
unset brew_cmd
