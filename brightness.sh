#!/bin/bash

echo "Give a brightness that ranges from 0.0 to 1.0"
read BRIGHTNESS

mapfile -t monitorList < <(xrandr | grep " connected" | cut -f1 -d " ")

for monitorName in "${monitorList[@]}"
do
        xrandr --output $monitorName --brightness $BRIGHTNESS
done
