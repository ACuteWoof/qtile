#!/bin/sh

if [ -z "$IMAPURL" ]; then
	echo "IMAPURL not set"
	exit 1
fi

cat ~/.local/share/latestmail || echo "Date: Thu, 01 Jan 1970 00:00:00 +0000" > ~/.local/share/latestmail

while true; do
	lastdate=$(grep '^Date:' ~/.local/share/latestmail | cut -d' ' -f2-)
	curl --silent "$IMAPURL/INBOX;UID=*;SECTION=HEADER.FIELDS%20(FROM%20SUBJECT%20DATE)" > ~/.local/share/latestmail
	
	input=$(cat ~/.local/share/latestmail)
	
	FROM=$(echo "$input" | grep '^From:' | cut -d' ' -f2-)
	DATE=$(echo "$input" | grep '^Date:' | cut -d' ' -f2-)
	SUBJECT=$(echo "$input" | grep '^Subject:' | cut -d' ' -f2-)

	lasttimestamp=$(date -d "$lastdate" +%s)
	currtimestamp=$(date -d "$DATE" +%s)

	difference=$((currtimestamp - lasttimestamp))

	echo $difference

	if [ $difference -gt 0 ]; then
		notify-send -a "Mail Checker" -w  "New Mail" "From: $FROM\nSubject: $SUBJECT"
	fi
	
	sleep 300
done
