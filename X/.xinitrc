setxkbmap -option 'ctrl:nocaps'
if [ -f $HOME/.Xresources ]; then
  xrdb -merge $HOME/.Xresources
fi
eval $(cat ~/.fehbg) &
exec mpd &
exec VBoxClient-all &
#exec ~/bin/big_screen.rb
exec subtle
