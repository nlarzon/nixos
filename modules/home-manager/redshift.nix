{inputs, outputs, pkgs, config, ...}:
{
  services.redshift = {
    enable = true;
    latitude = 57.70;
    longitude = 11.97;
    provider = "manual";
    temperature = {
        day = 5700;
        night = 3500;
    };
  };
}
