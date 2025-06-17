{ config, pkgs, ... }:

{
  boot.blacklistedKernelModules = [ "nouveau" ];

  services.xserver = {
    enable = true;
    videoDrivers = [ "nvidia" ];
  };

  hardware.nvidia = {
    modesetting.enable = true;
    powerManagement.enable = false;
    open = false;
    nvidiaSettings = true;
  };

  environment.systemPackages = with pkgs; [ nvidia-smi ];
}
