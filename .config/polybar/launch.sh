#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch the bar on each Monitor
if type "xrandr"; then
  for p in $(xrandr --query | grep " connected primary" | cut -d" " -f1);do
    MONITOR=$p polybar --reload bottom &
    MONITOR=$p polybar --reload top &
  done
else
  polybar --reload example &
fi

echo "Bars launched..."

