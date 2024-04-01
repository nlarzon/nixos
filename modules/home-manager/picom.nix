{config, intputs, outputs, pkgs, ...}:
{
  services.picom = {
    enable = true;
    backend = "xrender";
    fade = true;
    fadeSteps = [0.1 0.1];
    vSync = false;
    shadow = false;
    settings = {
      # corners
      corner-radius = 5;
      rounded-corners-exclude = [
        "window_type = 'dock'"
        "window_type = 'desktop'"
      ];
    };
  };
}
