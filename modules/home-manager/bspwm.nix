{inputs, outputs, ...}:
{
  xdg.configFile."/home/nlarzon/.config/bspwm/bspwmrc".text = ''
#! /usr/bin/env bash

pgrep -x sxhkd >/dev/null || sxhkd &
wal -R -q &

# Set the cursor
xsetroot -cursor_name left_ptr &

# pgrep -x picom >/dev/null || picom --config ~/.config/picom/picom.conf &
pgrep -x polybar > /dev/null || "$HOME"/.config/polybar/launch.sh &
# pkill copyq || copyq -s main &
deamonize ~/.config/polybar/launch.sh


bspc config remove_disabled_monitors true
bspc config remove_unplugged_monitors true

bspc config border_width 5
bspc config window_gap 5
bspc config top_padding 22
bspc config bottom_padding 0

bspc config split_ratio 0.62
bspc config borderless_monocle true
bspc config gapless_monocle true

# Mouse
bspc config click_to_focus button1
bspc config focus_follows_pointer false

bspc rule -a Gimp desktop='^8' state=floating follow=on
bspc rule -a Chromium desktop='^2'
bspc rule -a mplayer2 state=floating
bspc rule -a Kupfer.py focus=on
bspc rule -a Screenkey manage=off
bspc rule -a Code desktop='^3' follow=on
bspc rule -a Sublime_text desktop='^5' follow=on
bspc rule -a Slack desktop='^8' follow=off
bspc rule -a "Microsoft Teams - Preview" desktop='^8' follow=off
bspc rule -a "Cisco AnyConnect Secure Mobility Client" desktop='^9' follow=on state=floating

# source the colors.
. "~/.cache/wal/colors.sh"


# Set the border colors.
bspc config normal_border_color "$color1"
bspc config active_border_color "$color2"
bspc config focused_border_color "$color10"
# Use the line below if you are on bspwm >= 0.9.4
bspc config presel_feedback_color "$color1"
  '';
}
