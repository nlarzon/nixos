{inputs, outputs, ...}:
{
  xdg.configFile."/home/nlarzon/.xprofile".text = ''
exec wal -R -q &
exec /home/nlarzon/.config/polybar/launch.sh &
exec sxhkd &
#  exec xset r rate 180 70 &
  '';
}
