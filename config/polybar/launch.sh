#!/bin/bash


killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done


polybar -c ~/.config/polybar/bar1.ini &
polybar -c ~/.config/polybar/bar2.ini &
polybar -c ~/.config/polybar/bar3.ini &
