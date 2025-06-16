{ pkgs, ... }: {
  services.xserver = {
    enable = true;
    displayManager.lightdm.enable = true;
    windowManager.i3.enable = true;
    xkb.layout = "us";
  };

  environment.systemPackages = with pkgs; [
    i3
    i3status
    dmenu
    picom
    flameshot
    dunst
    lxappearance
    feh
    nnn
    jetbrains-mono
  ];

  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
  ];
}
