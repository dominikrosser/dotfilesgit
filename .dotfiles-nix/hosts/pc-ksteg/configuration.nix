# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, lib, pkgs, inputs, ... }:

{
  imports = [ ./hardware-configuration.nix ../common-configuration.nix ];

  #xdg.portal.extraPortals = [
  #  ## already included in gnome ... pkgs.xdg-desktop-portal-gtk
  #  pkgs.xdg-desktop-portal-gnome
  #  ## do not add this: pkgs.xdg-desktop-portal-hyprland  (it is already included)
  #];

  ## services.xserver.displayManager.gdm.enable = true;
  # services.xserver.desktopManager.gnome.enable = true;
}
