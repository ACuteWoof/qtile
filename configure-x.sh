xrandr --output HDMI-1 --scale 2x2
xrandr --output eDP-1 --primary --mode 2880x1800 --rate 120 --pos 0x360 --rotate normal --output DP-1 --off --output DP-2 --off --output HDMI-1 --mode 1920x1080 --rate 75 --pos 2880x0 --rotate normal
xrandr --output eDP-1 --primary --mode 2880x1800 --rate 120 --pos 288x2160 --rotate normal --output DP-1 --off --output DP-2 --off --output HDMI-1 --mode 1920x1080 --rate 75 --pos 0x0 --rotate normal
xrandr --output eDP-1 --mode 2880x1800 --rate 120
setxkbmap -option compose:rctrl
xinput map-to-output 9 eDP-1
