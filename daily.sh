#!/bin/sh

if [ "$ROFI_RETV" = "1" ] || [ "$ROFI_RETV" = "2" ]
then
	file=~/Basement/Daily/$(date +%d-%m-%Y).md
	todo_item="$@"
	# Escape special characters in the todo item
	escaped_item=$(printf '%s\n' "$todo_item" | sed -e 's/[\/&]/\\&/g')
	
	# Toggle between unchecked and checked
	if [[ "$todo_item" == *"- [ ]"* ]]; then
		sed -i 's/'"$escaped_item"'/- [x] '"$(echo "$todo_item" | sed 's/- \[ \] //')"'/g' "$file"
	elif [[ "$todo_item" == *"- [x]"* ]]; then
		sed -i 's/'"$escaped_item"'/- [ ] '"$(echo "$todo_item" | sed 's/- \[x\] //')"'/g' "$file"
	fi
	
	notify-send "Marked $@ as done."
	exit 0
fi

cat ~/Basement/Daily/$(date +%d-%m-%Y).md
