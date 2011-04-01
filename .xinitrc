#!/bin/sh

xrdb -merge ~/.Xresources
setxkbmap -option 'ctrl:nocaps'
exec awesome
