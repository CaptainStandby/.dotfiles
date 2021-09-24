
0=${(%):-%N}
find "${0:A:h}/" -type f -name '*.plugin.zsh' -print0 | while IFS= read -r -d $'\0' file; do
	source $file
done
