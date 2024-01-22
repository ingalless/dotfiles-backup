#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar.log
# polybar --config=$HOME/.config/polybar/config.ini example 2>&1 | tee -a /tmp/polybar.log & disown

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --config=$HOME/.config/polybar/config.ini --reload example 2>&1 | tee -a /tmp/polybar.log & disown
  done
else
  polybar --config=$HOME/.config/polybar/config.ini --reload example 2>&1 | tee -a /tmp/polybar.log & disown
fi

echo "Bars launched..."
