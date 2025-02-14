#!/bin/bash

ip=$(ifconfig | grep "tun0" | awk '{print $1}' | tr ':' ' ')

if [ "$ip" == "tun0 " ]; then
  echo -e "%{F#009dff} %{F-}%{F#00ff62}$(ifconfig tun0 | grep 'inet ' | awk '{print $2}')%{F-}"
else
  echo -e "%{F#009dff} %{F-}%{F#ff0019}Disconnected%{F-}"
fi
