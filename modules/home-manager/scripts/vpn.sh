#!/bin/sh

interface=$(ip link show | grep cscotun0 | awk '{print $2}' | tr -d ':')
vpn=$(ip a s "$interface" | grep -E -o 'inet [0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | cut -d ' ' -f2)

if [ "$interface" = "cscotun0" ]; then
	echo " $vpn"
else
	echo " Disconnected"
fi
