#!/usr/bin/env bash
# Execute all *.bash files in a directory
function rc_all_bash {
	dir_path=$1
	if [[ -d "${dir_path}" ]]; then
		for rc in "${dir_path}"/*.bash; do
			if [[ -f "$rc" ]]; then
				# shellcheck source=/dev/null
				. "$rc"
			fi
		done
	fi
	unset rc
}

# Append to '$PATH' if directory exists and current in not '$PATH'
function bash_add_path {
	bin_path=$1
	if ! [[ "$PATH" =~ $bin_path ]] && [[ -d "$bin_path" ]]; then
		PATH="${bin_path}:$PATH"
	fi
	export PATH
	unset bin_path
}

# Add to 'PATH'
bash_add_path ~/.local/bin

# Execute all *.bash files under directory
BASHRC_D=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)
rc_all_bash "${BASHRC_D}/env.d"
rc_all_bash "${BASHRC_D}/function.d"
rc_all_bash "${BASHRC_D}/conf.d"
