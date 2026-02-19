#!/bin/sh
notify-send "Loading MPV"
mpv --profile=1080p "$(echo $(xclip -o -b))"
notify-send "MPV closed"
