#!/bin/sh

killall polybar

if type "xrandr"; then
	for m in $(xrandr --query | grep "connected" | grep -v "disconnected" | cut -d " " -f1); do
		MONITOR=$m polybar mybar &
	done
else
	polybar mybar &
fi
