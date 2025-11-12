# bash completion for sboports

_sboports()
{
	local cur prev avaliable_commands

	cur=${COMP_WORDS[COMP_CWORD]}
	prev=${COMP_WORDS[COMP_CWORD-1]}
	avaliable_commands="fetch checksum diff install
		uninstall clean search help"

	if [ "$COMP_CWORD" -eq 1 ]; then
		COMPREPLY=($(compgen -W "$avaliable_commands" -- $cur))
		return 0
	fi

	case "$prev" in
		fetch)
			COMPREPLY=($(compgen -W "extract update" -- $cur))
			;;
	esac
}

complete -F _sboports sboports
