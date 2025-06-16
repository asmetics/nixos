{ config, pkgs, ... }:

{
  home.stateVersion = "23.11";
  home.username = "asmetics";
  home.homeDirectory = "/home/asmetics";

  home.packages = with pkgs; [
    kitty
    i3
  ];

  home.file = {
    ".config/i3/config".source = ../../dotfiles/i3/config;
    ".config/kitty/kitty.conf".source = ../../dotfiles/kitty/kitty.conf;
  };

  programs.home-manager.enable = true;
}
