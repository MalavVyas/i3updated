#!/bin/sh

IFACE=$(ifconfig | grep wlp3s0 | awk '{print $1}')

if [ "$IFACE" = "wlp3s0" ]; then
    echo "#1 %{u#55aa55}$(ifconfig wlp3s0 | grep inet | awk '{print $2}' | cut -f2 -d ':')%{u-}"
else
    echo "#1 %{F#FF0000}%{u#FF0000}Wlan DISCONNECTED%{u-}%{F-}"
fi
