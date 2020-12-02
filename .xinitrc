#!/bin/sh

userresources="$HOME/.Xresources"
usermodmap="$HOME/.Xmodmap"
sysresources="/etc/X11/xinit/.Xresources"
sysmodmap="/etc/X11/xinit/.Xmodmap"

# merge the defaults and keymaps
if [ -f "$sysresources" ]
then
    xrdb -merge "$sysresources"
fi

if [ -f "$sysmodmap" ]
then
    xmodmap "$sysmodmap"
fi

if [ -f "$userresources" ]
then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]
then
    xmodmap "$usermodmap"
fi

# start the programs in the /etc/X11/xinit/xinitrc.d directory
if [ -d "/etc/X11/xinit/xinitrc.d" ]
then
	for f in "/etc/X11/xinit/xinitrc.d/?*.sh"
	do
		[ -x "$f" ] && . "$f"
	done
	unset f
fi

# start the compositor
picom -CG -e 1.0 --no-fading-openclose &

# set the wallpaper
nitrogen --restore &

# start the status monitor
slstatus &

# enable automatically locking the computer with slock after 5min
xautolock -time 5 -locker slock &

# start unclutter to remove the mouse when idle
unclutter &

# start redshift
redshift &

# speed the refresh rate up
xset r rate 300 50 &

# start dwm
while true
do
	dwm >/dev/null 2>&1
done
exec dwm
