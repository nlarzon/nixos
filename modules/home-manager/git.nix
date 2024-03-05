{inputs, outputs, pkgs, config, ...}:
{
  programs.git = {
    enable = true;
    userEmail = "nlarzon@gmail.com";
    userName = "nlarzon";
    core.editor = "nvim";
    commit.verboe = true;
  };
}