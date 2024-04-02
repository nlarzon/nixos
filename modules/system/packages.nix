{pkgs, ...}:
{
  environment.systemPackages = with pkgs; [

    xorg.xev
    xclip
    picom
    redshift

    # Ricing stuff
    fira-code-nerdfont
    nerd-font-patcher
    material-design-icons
    material-icons
    nerdfonts
    lxappearance
    catppuccin-papirus-folders
    qt5ct
    pywal
    scrot
    killall
    i3lock
    vim
    neofetch
    polybar
    zscroll
    rofi
    feh
    wget
    fishPlugins.tide
    micro
    git
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
