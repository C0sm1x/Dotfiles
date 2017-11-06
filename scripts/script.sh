#!/bin/bash

COMMAND=`fortune`
SYNC_COMMAND=`rclone sync ~/Google_Drive_Sync/Chuck_Norris_Quotes.txt remote:`
printf "$COMMAND \n \n" >> ~/Google_Drive_Sync/Chuck_Norris_Quotes.txt
exec $SYNC_COMMAND

