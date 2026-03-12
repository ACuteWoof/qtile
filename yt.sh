#!/bin/sh
notify-send "Loading MPV"
mpv "$(echo $(xsel -o -b))"
notify-send "MPV closed"
