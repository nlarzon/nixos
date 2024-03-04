{inputs, outputs, pkgs, config, ...}:
{
  programs.git = {
    enable = true;
    userEmail = "nlarzon@gmail.com";
    userName = "nlarzon";
  };
}