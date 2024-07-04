{ config, lib, pkgs, ... }:

{
  # Nixpkgs
  nixpkgs.config.allowUnfree = true;
  nixpkgs.overlays = [
    (import (fetchTarball {
      url =
        "https://github.com/nix-community/emacs-overlay/archive/master.tar.gz";
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
      sha256 = "0m5adc35pizijfczvrwlpndp0a65nhanpkszajkfnrnw5hq91c00";
||||||| 701e366
      sha256 = "0wcl3d8waf59p8ar9jqdgvx32aqg8291k7c7xxafdlx7zp99wfia";
=======
      sha256 = "1ysfibwg29l4y90hgvk6i0blhp4q7h1vwnfwilwkwhhgdg8n1ns5";
>>>>>>> b5d35c5b2978c22eb780e957057e94e72b059e59
||||||| 701e366
      sha256 = "0wcl3d8waf59p8ar9jqdgvx32aqg8291k7c7xxafdlx7zp99wfia";
=======
      sha256 = "1ysfibwg29l4y90hgvk6i0blhp4q7h1vwnfwilwkwhhgdg8n1ns5";
>>>>>>> b5d35c5b2978c22eb780e957057e94e72b059e59
||||||| 701e366
      sha256 = "0wcl3d8waf59p8ar9jqdgvx32aqg8291k7c7xxafdlx7zp99wfia";
=======
      sha256 = "1ysfibwg29l4y90hgvk6i0blhp4q7h1vwnfwilwkwhhgdg8n1ns5";
>>>>>>> b5d35c5b2978c22eb780e957057e94e72b059e59
    }))
  ];

  # Storage Optimization
  nix.optimise.automatic = true;
  nix.settings.auto-optimise-store = true; # might slow down builds
  nix.gc.automatic = true;
  nix.gc.dates = "weekly";
  nix.gc.options = "--delete-older-than 7d";
  nix.extraOptions = ''
    min-free = ${toString (100 * 1024 * 1024)}
    max-free = ${toString (1024 * 1024 * 1024)}
  ''; # Free up 1GiB whenever there is less than 100MiB left

  # Flake Support
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nix.settings = {
    builders-use-substitutes = true;
    # substituters to use
    substituters = [
      "https://anyrun.cachix.org"
      "https://nix-community.cachix.org"
      "https://cache.nixos.org/"
      "https://hyprland.cachix.org"
    ];
    trusted-public-keys = [
      "anyrun.cachix.org-1:pqBobmOjI7nKlsUMV25u9QHa9btJK65/C8vnO3p346s="
      "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
      "hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc="
    ];
  };

}
