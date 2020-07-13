#!/usr/bin/env bash
# https://wiki.archlinux.org/index.php/Awesome#Autostart
function run {
  if ! pgrep -f $1 ;
  then
    $@&
  fi
}

run picom
# https://wiki.archlinux.org/index.php/Awesome#Changing_keyboard_layout
run setxkbmap -layout "us,ir"
