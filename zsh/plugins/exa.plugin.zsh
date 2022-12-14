# https://the.exa.website/

exa_cmd="${commands[exa]}"
if [ -x "$exa_cmd" ]; then
	alias ls="$exa_cmd"
	alias ll="$exa_cmd -alFb --header"
	alias la="$exa_cmd -aa"
	alias l="$exa_cmd -GF"
fi

unset exa_cmd
