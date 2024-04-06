{inputs, outputs, pkgs, config, ...}:
{
  imports = [
    #./gtk.nix
    ./shell.nix
    ./home.nix
    ./sxhkd.nix
    ./kitty.nix
    ./git.nix
    ./gh.nix
    ./xinit.nix
    ./bspwm.nix
    #./rofi.nix
    ./picom.nix
    ./polybar.nix
    ./dunst.nix
  ];
  programs.home-manager.enable = true;

}
