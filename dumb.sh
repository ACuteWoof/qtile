#!/bin/env bash

if [[ "$1" != "" ]]; then
	if [[ "$1" == "Cancel" ]]; then
		exit 0
	fi
	search="$(echo "$1" | jq -Rr @uri)"
	notify-send "Opening Dumb lyrics search for \"$1\" in qutebrowser"
	qutebrowser "http://lollab:5555/search?q=$search"
	exit 0
fi
mpc current --format="%artist% %title%"
echo "Cancel"
mpc listall --format="%artist% %title%"
