#!/bin/sh

arg="$@"
utils="/usr/lib/`basename $(realpath $0)`"

# Link utils.
if [ -d "$utils" ] ; then
	for i in $utils/* ; do
		rm -f "$i"
		ln -s $arg "$i" $XDG_CONFIG_HOME/i3blocks
	done
fi
