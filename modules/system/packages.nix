{pkgs, ...}:
{
  environment.systemPackages = with pkgs; [

    xorg.xev
    xclip
    picom

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
    fishPlugins.tide
    micro
    git
    fira-code-nerdfont
    monaspace
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
