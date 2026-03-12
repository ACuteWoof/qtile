#!/bin/sh

if [ "$ROFI_RETV" = "1" ] 
then 
	echo "${@#[$'\r\t\n ']}" | xsel -i -b
	notify-send "Copied ${@#[$'\r\t\n ']} to clipboard."
	exit 0
fi
if [ "$ROFI_RETV" = "2" ]
then
	meaning "$@" -la
	exit 0
fi

echo "Enter the Latin term"
