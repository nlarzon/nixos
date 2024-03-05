{pkgs, inputs, config, outputs, ...}:
{
  programs.kitty = {
    enable = true;
    shellIntegration.enableFishIntegration = true;
    font.name = "FiraCode Nerd Font Mono";
    theme = "Catppuccin-Mocha";
    settings = {
      dynamic_background_opacity = "yes";
      background_opacity = "0.90";
      confirm_os_window_close = 0;
      scrollback_lines = 2000;
      strip_trailing_spaces = "smart";
      open_url_with = "firefox";
      hide_window_decorations = "yes";
      cursor_shape = "underline";
      cursor_blink_interval = 1;
      cursor_stop_blinking_after = 15;
      window_padding_width = 18;
      tab_bar_min_tabs = 1;
      tab_bar_edge = "top";
      tab_bar_style = "powerline";
      tab_powerline_style = "angled";
      tab_title_template = "{title}{' :{}:'.format(num_windows) if num_windows > 1 else ''}";
    };
  };
}
