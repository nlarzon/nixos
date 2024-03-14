{inputs, outputs, ...}:
{
  xdg.configFile."/home/nlarzon/.config/bspwm/bspwmrc".text = ''
#! /bin/bash

pgrep -x sxhkd >/dev/null || sxhkd &

# Set the cursor
xsetroot -cursor_name left_ptr &

# pgrep -x picom >/dev/null || picom --config ~/.config/picom/picom.conf &
# pgrep -x polybar > /dev/null || "$HOME"/.config/polybar/launch.sh &
# pkill copyq || copyq -s main &
# deamonize ~/.config/polybar/launch.sh
# wal -R -q &

# bspc monitor -g 3840x1200+0+0
bspc monitor -d I II III IV V VI VII VIII IX
# bspc eDP-1 -d X

bspc config remove_disabled_monitors true
bspc config remove_unplugged_monitors true
  '';
}
