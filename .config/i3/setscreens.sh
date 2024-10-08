#!/bin/sh

# Get the hostname of the machine
hostname=$(hostname)

if [ "$hostname" = "anders-minipc" ]; then
  xrandr \
    --output DisplayPort-0 --primary --mode 2560x1440 --pos 0x0 --rotate normal \
    --output HDMI-A-0 --mode 2560x1440 --right-of DisplayPort-0 --rotate left
elif [ "$hostname" = "anders-linux" ]; then
  xrandr \
    --output DP-4 --primary --mode 2560x1440 --pos 0x0 --rate 144 --rotate normal \
    --output DP-2 --mode 2560x1440 --right-of DP-4 --rotate right
  # Set refresh rate of 144Hz
  # xrandr --output DP-4 --mode 2560x1440 --rate 144
fi
