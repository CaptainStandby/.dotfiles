
if [ $commands[kubectl] ]; then
	source <(kubectl completion zsh)
	alias k=kubectl
fi