#!/bin/bash

tree() {
	[ -n "$1" ] && REP=$1 || REP="."
	find $REP | sed 's/[^/]*\//|   /g;s/| *\([^| ]\)/+--- \1/'
}

alias upgradesafe='sudo aptitude update ; sudo aptitude safe-upgrade' 
alias upgradefull='sudo aptitude update ; sudo aptitude full-upgrade'
alias deborphan='deborphan -Pa -p 0 | sort -k 3'
backup() {
	[ $# -lt 1 ] && { echo "Usage: backup file1 [file2 [...]]; return 1; }
	for arg in $@; do
		cp -av  "$arg" "$arg_$(date +%Y%m%d-%H%M)"
	done
}
archive() {
	[ $# -lt 1 ] && { echo "Usage: archive file1 [file2 [...]]; return 1; }
	for arg in $@; do
		local repArchives="$(dirname "$arg")/Archives"
		mkdir -p "$repArchives"
		tar czf "$repArchives/$(date +%Y%m%d-%H%M)_$(basename "$arg").tgz" "$arg"
	done
}

watchlog() {
	tail -${2:-300} '/var/log/'$1 | lwatch -i-
}

alias showIP='wget http://checkip.dyndns.org/ -O - -o /dev/null | grep -Eo "([0-9]+\.?){4}"'

alias iptables_list='sudo iptables -L -v --line-numbers'

function killps() {
	local pid pname sig="-TERM"   # Default signal.
	if [ "$#" -lt 1 ] || [ "$#" -gt 2 ]; then
		echo "Usage: killps [-SIGNAL] pattern"
		return 1
	fi
	[ $# = 2 ] && sig=$1
	for pid in $(ps ax -o pid,command | awk '!/awk/ && $0~pat { print $1 }' pat=${!#} ) ; do
		ps ax -o pid,args | awk '$1~var { print $0 }' var=$pid
		ask "Killer le process avec le signal $sig ?" && kill $sig $pid
	done
}

function ask() {
	echo -n "$@" '[y/n] ' ; read ans
	case "$ans" in
		y*|Y*) return 0 ;;
		*) return 1 ;;
	esac
}

function extract() {
	[ -f "$1" ] || { echo >&2 "'$1' is not a valid file"; return 1; }
	case $1 in
		*.tar)     tar xvf    $1 ;;
		*.tar.bz2) tar xvjf   $1 ;;
		*.tbz2)    tar xvjf   $1 ;;
		*.tar.gz)  tar xvzf   $1 ;;
		*.tgz)     tar xvzf   $1 ;;
		*.bz2)     bunzip2    $1 ;;
		*.rar)     unrar x    $1 ;;
		*.gz)      gunzip     $1 ;;
		*.zip)     unzip      $1 ;;
		*.Z)       uncompress $1 ;;
		*.7z)      7z x       $1 ;;
		*)
			echo >&2 "'$1' cannot be extracted via >extract<"
			return 2
			;;
	esac
}

