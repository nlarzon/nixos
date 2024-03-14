{pkgs, ...}:
{
  environment.systemPackages = with pkgs; [

    xorg.xev
    xclip

    # Ricing stuff
    fira-code-nerdfont
    lxappearance
    catppuccin-papirus-folders
    qt5ct
    pywal

    vim
    neofetch
    polybar
    rofi
    feh
    wget
    micro
    git
    fira-code-nerdfont
    fzf
    firefox
    flameshot

    pulsemixer
    bottom
    eza
    maim
    xdotool
    yt-dlp
    marktext
    appimage-run

  ];
}
