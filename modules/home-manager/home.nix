{inputs, config, pkgs, user, ...}:
{
  home.username = "nlarzon";
  home.homeDirectory = "/home/nlarzon";
  home.stateVersion = "23.11";

  home.file."/home/theo/Documents/wallpapers/solidcolor.png" = {
    enable = false; # disable this if you want to add your own wallpaper
    source = ./wallpaper.png; # or change this
  };
}