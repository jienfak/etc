#!/bin/sh
# Automatic user configuration installation and updating script.

rpath="$(dirname `readlink -f $0`)"
configure="$rpath/configure.d"
arg="$@"

if test -d $configure  ; then
	for i in $configure/*.sh ; do
		if test -r "$i" ; then
			echo "$i"
			. "$i"
		fi
	done
	unset i
fi

