{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    kitty
    librewolf
    vscode
    blueman
    git
  ];

  nixpkgs.config.allowUnfree = true;
}
