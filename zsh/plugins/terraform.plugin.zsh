cmd="${commands[terraform]}"

if [ -x "$cmd" ]; then
	complete -o nospace -C "$cmd" terraform
	alias tf="$cmd"
fi
