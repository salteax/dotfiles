#!/usr/bin/env bash

killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

if type "xrandr"; then
	for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
	MONITOR=$m polybar --reload bar_top &
	MONITOR=$m polybar --reload bar_bottom &
done
else
	polybar --reload bar_top &
	polybar --reload bar_bottom &
fi

echo "Polybar launched..."
