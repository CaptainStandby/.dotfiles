
if [ $commands[podman] ]; then
	compdef _podman podman
	source <(podman completion --no-desc zsh)
	alias docker=podman
fi
