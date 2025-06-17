{ pkgs, application, ... }:

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
    picom-next
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
    neofetch
    killall

    application.packages.${pkgs.system}.default
  ];

  nixpkgs.config.allowUnfree = true;
}