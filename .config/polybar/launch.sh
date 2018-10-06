#!/bin/bash

#Terminate already running instances
killall -q polybar

# Wait until shutdown
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

#Launch polybar example -r &
for m in $(polybar --list-monitors | cut -d":" -f1); do
    MONITOR=$m polybar --reload topbar &
done
