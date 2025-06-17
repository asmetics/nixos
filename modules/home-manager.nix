{ config, pkgs, ... }:

{
  imports = [
    <home-manager/nixos>
  ];

  # Note to self: make my user not hardcoded in paths later

  home-manager.users.asmetics = {
    home.file.".config/i3/config".source = /home/asmetics/repos/nixos/home/i3/config;
    home.file.".config/kitty/kitty.conf".source = /home/asmetics/repos/nixos/home/kitty/kitty.conf;
  };
}

