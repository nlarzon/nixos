{pkgs, ...}:
{
  environment.systemPackages = with pkgs; [

    xorg.xev
    xclip
    picom

    # Ricing stuff
    fira-code-nerdfont
    nerd-font-patcher
    nerdfonts
    lxappearance
    catppuccin-papirus-folders
    qt5ct
    pywal

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
