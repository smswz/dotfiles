#!/bin/sh

xrdb -merge ~/.Xresources
setxkbmap -option 'ctrl:nocaps'
xcompmgr &
exec awesome
