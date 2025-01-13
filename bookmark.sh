#!/bin/sh

if [ "$ROFI_RETV" = "1" ] || [ "$ROFI_RETV" = "2" ]
then
	echo "$@" | xsel -i -b
	notify-send "Copied $@ to clipboard."
	exit 0
fi

cat $HOME/Basement/bookmarks.txt
