{ config, inputs, pkgs, ... }:
{
  wayland.windowManager.hyprland = {
    enable = true;# TODO for now we have all the other files except hyprland local in ~/.config!!!
    xwayland.enable = true;
    # settings = pkgs.lib.mkDefault {};
    extraConfig = pkgs.lib.mkDefault ''
      $no_action = notify-send "Hello"
    '';
    # sourceFirst = false;
    systemd = {
      enable = true;
      variables = ["--all"];
    };
    settings = {
      source = "~/.config/hypr/hyprland_domi.conf"; # Wow this is ultra hacky, still requires us to keep all configs in .config directly.
    };
    # systemd.extraCommands = ...;
    plugins = [
       ## Re add later! inputs.hyprgrass.packages.${pkgs.system}.default
       # inputs.hyprland-plugins.packages."${pkgs.system}".borders-plus-plus
    ];
    package = inputs.hyprland.packages.${pkgs.system}.hyprland;
    
  };

  #home.file.".config/hypr" = {
  #  source = ./.config/hypr;# TODO does not seem to link the config, still have to copy manually.
  #  recursive = true;
  #};
}
