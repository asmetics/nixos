{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    kitty
    librewolf
    vscode
    blueman
    git
    i3status
    polybar
  ];

  nixpkgs.config.allowUnfree = true;
}
