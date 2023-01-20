#!/bin/bash

# startxfce4 &
ibus-daemon -d -x &

if pgrep -x "xfwm4" > /dev/null
then
	killall xfwm4
fi

if pgrep -x "polybar" > /dev/null
then
	killall polybar
fi

if pgrep -x "sxhkd" > /dev/null
then
	killall sxhkd
fi

if pgrep -x "picom" > /dev/null
then
	killall picom
fi

if pgrep -x "dunst" > /dev/null
then
	killall dunst
fi

sxhkd &
picom &
dunst &
feh --randomize --bg-fill $HOME/wallpapers &
clash -d $HOME/clash &
. "${HOME}/.config/bspwm/colors.sh"
polybar -c ~/.config/polybar/config.ini
#Other application can be added here to autostart
