#!/usr/bin/env bash

icon="$HOME/Pictures/system/lock.jpeg"
tmpbg="/tmp/screen.png"

_lock(){
i3lock -n -e -i "$tmpbg" -u
}

# Screen blured as background
scrot "$tmpbg"
convert "$tmpbg"  -channel RGBA  -blur 0x8  "$tmpbg"
convert "$tmpbg" "$icon" -gravity center -composite -matte "$tmpbg"

# Suspend or hibernate
if [[ $1 = "suspend" ]]; then
 systemctl suspend -i && _lock
elif [[ $1 = "hibernate" ]]; then
  systemctl hibernate
else
  _lock
fi

# If still locked after 20 seconds, turn off screen.
sleep 20 && pgrep -x i3lock && xset dpms force off
