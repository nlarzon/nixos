{inputs, outputs, pkgs, config, ...}:
{
  services.sxhkd = {
    enable = true;
    keybindings = {
      "super + Return" = "kitty fish";
      "super + shift + Return" = 	"kitty fish bspc rule -a kitty -o state=floating follow=on center=true";
      "super + v" = "firefox";
      "super + shift + s" = "flameshot gui";
      "super + {_,shift + }w" = "bspc node -{c,k}";
      "super + shift + Escape" = "pkill -USR1 -x sxhkd; notify-send 'sxhkd' 'Reloaded config'";
      "super + Escape" = "sh $HOME/usr/bin/lock.sh";
      "super + alt + {q,r}" =	"bspc {quit,wm -r}; notify-send 'bspwm' 'Reloaded config'";
      "super + m" =	"bspc desktop -l next";
      "super + y" =	"bspc node newest.marked.local -n newest.!automatic.local";
      "super + g" =	"bspc node -s biggest.window";
      "super + {t,shift + t,s,f}" =	"bspc node -t {tiled,pseudo_tiled,floating,fullscreen}";
      "super + ctrl + {m,x,y,z}" =	"bspc node -g {marked,locked,sticky,private}";
      "super + {_,shift + }{h,j,k,l}" =	"bspc node -{f,s} {west,south,north,east}";
      "super + {p,b,comma,period}" = "bspc node -f @{parent,brother,first,second}";
      "super + {_,shift + }c" =	"bspc node -f {next,prev}.local.!hidden.window";
      "super + bracket{left,right}" = "bspc desktop -f {prev,next}.local";
      "super + {grave,Tab}" =	"bspc {node,desktop} -f last";
      "super + {_,shift + }{1-9,0}" =	"bspc {desktop -f,node -d} '^{1-9,10}'";
      "super + ctrl + {h,j,k,l}" = "bspc node -p {west,south,north,east}";
      "super + ctrl + {1-9}" = "bspc node -o 0.{1-9}";
      "super + alt + {h,j,k,l}" =	"bspc node -z {left -20 0,bottom 0 20,top 0 -20,right 20 0}";
      "super + alt + shift + {h,j,k,l}" =	"bspc node -z {right -20 0,top 0 20,bottom 0 -20,left 20 0}";
      "super + {Left,Down,Up,Right}" = "bspc node -v {-20 0,0 20,0 -20,20 0}";
      "super + F1" = "$HOME/usr/bin/rofi-sxhkd.sh";
      "super + {_,shift + }z" = "$HOME/usr/bin/dnd-on.sh, $HOME/usr/bin/dnd-off.sh}";
      "super + d" = "rofi -show drun";
      "Print" = "maim -s | xclip -selection clipboard -t image/png";
      "shift + Print" = "maim | xclip -selection clipboard -t image/png";
      "control + Print" = "maim -i $(xdotool getactivewindow) | xclip -selection clipboard -t image/png";
    };
  };
}
