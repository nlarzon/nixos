{inputs, outputs, pkgs, config, ...}:
{
  programs.gh = {
    enable = true;
    extensions = [
      pkgs.gh-dash
    ];
   settings = {
    aliases = {
      co = "pr checkout";
      pl = "pr list";
      ga = "dash";
    };
  };

};
}


