xrdb -merge ~/.Xresources

#set cursor  
xsetroot -cursor_name left_ptr

#trayer --edge top --align right --SetDockType true --SetPartialStrut true --expand true --width 10 --transparent true --tint 0x191970 --height 12 &
xscreensaver -no-splash &

# start rxvt daemon
urxvtd -q -f -o

#start synergy server
synergys -c ~/synergy.conf

# set background image
sh ~/.fehbg &

# start xmonad
# start i3
exec i3
