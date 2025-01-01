#!/bin/bash


echo -e "$(/usr/sbin/ifconfig wlan0 | grep "inet " | awk '{print $2}')%{u-}"
