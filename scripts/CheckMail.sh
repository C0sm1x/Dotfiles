#!/bin/bash
cd $(dirname $0)
inboxes=$(cat inboxes)

bash ~/scripts/mail-alert.sh
while :
do
if [ -f $(pgrep offlineimap) ]; then
	offlineimap -o -c ~/.offlineimaprc
	echo "OfflineIMAP sync complete."
    bash mail-alert.sh
	notmuch new
else
	echo "OfflineIMAP already running."
fi
sleep 60
done
