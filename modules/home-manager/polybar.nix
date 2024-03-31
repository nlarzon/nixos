{inputs, outputs, ...}:
{
  xdg.configFile."/home/nlarzon/.config/polybar/" = {
    source = ./polybar;
    recursive = true;
  };
}