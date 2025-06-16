{ pkgs, ... }: {
  users.users.asmetics = {
    isNormalUser = true;
    description = "asmetics";
    extraGroups = [ "networkmanager" "wheel" "bluetooth" ];
    packages = with pkgs; [ ];
  };
}
