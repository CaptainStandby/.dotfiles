autoload -U compinit; compinit
autoload -U +X bashcompinit && bashcompinit

0=${(%):-%N}

find "${0:A:h}/" -type f -name '*.completion.zsh' -print0 | while IFS= read -r -d $'\0' file; do
	source $file
done
