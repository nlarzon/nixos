{inputs, outputs, pkgs, config, ...}:
{
  programs.git = {
    enable = true;
    userEmail = "nlarzon@gmail.com";
    userName = "nlarzon";
    extraConfig = {
    core = {
     editor = "nvim";
    };
    };
    #coreEditor = "nvim";
    #commitVerbose = true;
  };
}
