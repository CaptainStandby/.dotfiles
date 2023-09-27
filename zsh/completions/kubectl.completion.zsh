cmd="${commands[kubectl]}"

if [ -x "$cmd" ]; then
	source <("$cmd" completion zsh)
	alias k="$cmd"
fi

unset cmd
