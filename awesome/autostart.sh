#!/usr/bin/env bash

function run {
  if ! pgrep -f $1 ;
  then
    $@&
  fi
}

# Resolution
# xrandr --output DP-1 --mode 1920x1080 --rate 164.97 &

# Compositor
run picom

# Lock Screen
# rub betterlockscreen &

# network manager
run nm-applet

# dunst
run dunst

