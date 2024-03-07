#!/bin/sh
notify-send --urgency=critical "ﮖ Do Not Disturb" "Notifications paused"
sleep 3
dunstctl set-paused true
