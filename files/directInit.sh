#!/bin/bash

PROJECT_URL='https://raw.githubusercontent.com/BorX/dotfiles/master'

testWritable() {
	local dir="$1"
	[ -w "$dir" ] || {
		echo >&2 "$dir not writable for user $USER"
		return 1
	}
}

initProfile_d() {
	local dir='/etc/profile.d'
	testWritable "$dir" || return 1
	for scriptPath in $dir/{01_history,02_term,11_shellAlias,12_functions,21_editors,31_color}.sh; do
		rm -f "$scriptPath"
		wget -qO "$scriptPath" "$PROJECT_URL$scriptPath"
		chmod 644 "$scriptPath"
	done
}

initVimrc() {
	local dir='/etc/vim'
	testWritable "$dir" || return 1
	local filePath="$dir/vimrc.local"
	rm -f "$filePath"
	wget -qO "$filePath" "$PROJECT_URL/$filePath"
	chmod 644 "$filePath"
}

initProfile_d
initVimrc
