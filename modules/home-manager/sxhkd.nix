{inputs, outputs, pkgs, config, ...}:
{
  services.sxhkd = {
    enable = true;
    keybindings = {
      "super + Return" = "kitty fish";
      "super + v" = "firefox";
      "super + shift + s" = "flameshot gui";



      "super + d" = "rofi -show drun";
      "Print" = "maim -s | xclip -selection clipboard -t image/png";
      "shift + Print" = "maim | xclip -selection clipboard -t image/png";
      "control + Print" = "maim -i $(xdotool getactivewindow) | xclip -selection clipboard -t image/png";
    };
  };
}