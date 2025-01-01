#!/bin/bash

bateria=$(upower -i $(upower -e | grep BAT) | grep "percentage" | awk '{print $NF}' | tr '%' ' ' | sed 's/ //g')
estado=$(upower -i $(upower -e | grep BAT) | grep "state" | awk '{print $NF}' | sed 's/ //g')

if [ "$estado" == "discharging" ]; then
  echo "Bateria: $bateria%/Discharging"
elif [ "$estado" == "charging" ]; then
  echo "Bateria: $bateria%/Charging"
else
  echo "Bateria: $bateria%/Unknown"
fi
