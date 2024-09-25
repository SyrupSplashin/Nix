{config, pkgs, ...}: {
  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      monitor = [
	"DP-2,preferred,0x0,1"
	"HDMI-A-1,1080x0920@60,auto-left,1,transform,1"
	"Unknown-1,disabled"
      ];
      "$terminal" = "alacritty";
      "$mainMod" = "SUPER";
      "$menu" = "rofi -show drun";
      env = [
	"XCURSOR_SIZE, 16"
	"HYPRCURSOR_SIZE,16"
	"LIBVA_DRIVER_NAME,nvidia"
	"XDG_SESSION_TYPE,wayland"
	"GBM_BACKEND,nvidia-drm"
	"__GLX_VENDOR_LIBRARY_NAME,nvidia"
	"NVD_BACKEND,direct"
      ];
      exec-once = [
	"hyprpaper"
	"waybar"
	"dunst"
      ];
      layerrule = [
	"blur,rofi"
	"blur,waybar"
      ];
      general = {
	gaps_in = 15;
	gaps_out = 20;
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
      animations = {
	bezier = "myBezier, 0.05, 0.9, 0.1, 1.05";
	animation = [
	  "windows, 1, 7, myBezier"
	  "windowsOut, 1, 7, default, popin 80%"
	  "border, 1, 10, default"
	  "borderangle, 1, 8, default"
	  "fade, 1, 7, default"
	  "workspaces, 1, 6, default"
	];
      };
      master = {
	new_status = "slave";
      };
      misc = {
	force_default_wallpaper = 0;
	disable_hyprland_logo = true;
      };
      input = {
	kb_layout = "us";
	follow_mouse = 1;
      };
      cursor = {
	no_hardware_cursors = false;
      };
      workspace = [
	"1, monitor:DP-2, persistent:true, default:true"
	"2, monitor:DP-2, persistent:true"
	"3, monitor:DP-2, persistent:true"
	"4, monitor:DP-2, persistent:true"
	"5, monitor:DP-2, persistent:true"
	"6, monitor:DP-2, persistent:true"
	"7, monitor:HDMI-A-1, persistent:true"
	"8, monitor:HDMI-A-1, persistent:true"
	"9, monitor:HDMI-A-1, persistent:true"
	"10, monitor:HDMI-A-1, persistent:true, default:true"
      ];
      bind = [
	# General Stuff
	"$mainMod, RETURN, exec, $terminal"
	"$mainMod, W, killactive,"
	"$mainMod, R, exec, $menu"
	"$mainMod Control, Q, exit,"
	"$mainMod Control, L, exec, hyprlock"
	"$mainMod, V, togglefloating,"
	# Move Focus HJKL
	"$mainMod, h, movefocus, l"
	"$mainMod, l, movefocus, r"
	"$mainMod, k, movefocus, u"
	"$mainMod, j, movefocus, d"
	# Switch Workspaces
	"$mainMod, 1, workspace, 1"
	"$mainMod, 2, workspace, 2"
	"$mainMod, 3, workspace, 3"
	"$mainMod, 4, workspace, 4"
	"$mainMod, 5, workspace, 5"
	"$mainMod, 6, workspace, 6"
	"$mainMod, 7, workspace, 7"
	"$mainMod, 8, workspace, 8"
	"$mainMod, 9, workspace, 9"
	"$mainMod, 0, workspace, 10"
	# Move active window to workspace
	"$mainMod SHIFT, 1, movetoworkspace, 1"
	"$mainMod SHIFT, 2, movetoworkspace, 2"
	"$mainMod SHIFT, 3, movetoworkspace, 3"
	"$mainMod SHIFT, 4, movetoworkspace, 4"
	"$mainMod SHIFT, 5, movetoworkspace, 5"
	"$mainMod SHIFT, 6, movetoworkspace, 6"
	"$mainMod SHIFT, 7, movetoworkspace, 7"
	"$mainMod SHIFT, 8, movetoworkspace, 8"
	"$mainMod SHIFT, 9, movetoworkspace, 9"
	"$mainMod SHIFT, 0, movetoworkspace, 10"
      ];
    };
  };
}
