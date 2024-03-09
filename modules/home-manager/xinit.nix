{inputs, outputs, ...}:
{
  xdg.configFile."/home/nlarzon/.xprofile".text = ''
  exec bspwm &
  #exec /home/nlarzon/.config/polybar/launch.sh &
  #exec picom &
  exec sxhkd &
  exec xset r rate 180 70 &
  '';
}