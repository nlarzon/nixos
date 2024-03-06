{inputs, config, pkgs, user, ...}:
{
  home.username = "nlarzon";
  home.homeDirectory = "/home/nlarzon";
  home.stateVersion = "23.11";

  home.file."/home/nlarzon/Documents/wallpapers/ethereal-tech-3440x1440.webp" = {
    enable = true; # disable this if you want to add your own wallpaper
    source = ./ethereal-tech-3440x1440.webp; # or change this
  };
}