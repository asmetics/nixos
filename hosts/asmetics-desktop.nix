{ config, pkgs, ... }:

{
  imports = [
    ../hardware-configuration.nix
    ../modules/users/asmetics.nix
    ../modules/desktop/i3.nix
    ../modules/services/pipewire.nix
    ../modules/services/bluetooth.nix
    ../modules/services/printing.nix
    ../system/time.nix
    ../system/locale.nix
    ../system/bootloader.nix
    ../system/networking.nix
    ../shared-packages.nix
#    ../modules/home-manager.nix
  ];

  system.stateVersion = "25.05";
}
