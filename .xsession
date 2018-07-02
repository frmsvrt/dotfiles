xset -dpms; xset s off
xrdb -merge ~/.Xresources

setxkbmap -layout "us,ru"
setxkbmap -option "grp:caps_toggle"
DEFAULT_SESSION=i3wm
wmname LG3D

xsetroot -solid gray

xinput --set-prop "MX Master" "Device Accel Profile" -1

xrandr --output DP-5 --rotate left
xrandr --output DP-3 --right-of DP-5 --rotate normal
# xrandr --output HDMI-0

exec i3 --force-xinerama -V >>~/.i3/i3log 2>&1
