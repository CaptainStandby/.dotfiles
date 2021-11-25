
0=${(%):-%N}

set -o allexport; source "${0:A:h}/options.env"; set +o allexport

find "${0:A:h}/" -type f -name '*.plugin.zsh' -print0 | while IFS= read -r -d $'\0' file; do
	source $file
done
