#!/bin/bash

# It's ding.opus with a lowercase "d". It's mistyped so it won't play, and it's as easy as changing the letter "d" to a lowercase d if I ever want to enable the ding sound.
notification="i3 exec mpv ~/scripts/Ding.opus"

cd $(dirname $0)
while read entry
	do
	[ "$(ls -A $entry)" ] && echo "New mail found in $entry." && exec $notification && notmuch new || echo "No new mail found in $entry."
	done < inboxes
