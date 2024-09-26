{config, pkgs, ...}: {
  wayland.windowManager.hyprland = {
    settings = {
      monitor = ", prefered, auto, 1";
      "$terminal" = "alacritty";
      "$mainMod" = "SUPER";
      "$menu" = "rofi -show drun";
      env = [""];
      general = {
	gaps_in = 5;
	gaps_out = 10;
	border_size = 2;
	"col.active_border" = "rgba(7cafc2ee) rgba(455054ee) 45deg";
	"col.inactive_border" = "rgba(595959aa)";
	resize_on_border = true;
	allow_tearing = false;
	layout = "master";
      };
      decoration = {
	rounding = 0;
	active_opacity = 1.0;
	inactive_opacity = 1.0;
	drop_shadow = true;
	shadow_range = 4;
	"col.shadow" = "rgba(1a1a1aee)";
	blur = {
	  enabled = true;
	  size = 3;
	  passes = 2;
	  vibrancy = 0.1696;
	};
      };
      input = {
	kb_layout = "us";
	kb_variant = "dvorak";
	follow_mouse = 1;
      };
    };
  };
}
