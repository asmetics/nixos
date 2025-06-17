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
    feh
    i3
    dmenu
    picom
    flameshot
    dunst
    lxappearance
    nnn
    jetbrains-mono
    discord
    steam
    neovim
    vlc
    kdePackages.dolphin
  ];



  nixpkgs.config.allowUnfree = true;
}
