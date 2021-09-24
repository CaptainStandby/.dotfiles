
if [ $commands[terraform] ]; then
	complete -o nospace -C $commands[terraform] terraform
	alias tf=terraform
fi
