{ pkgs, ... }: {
  users.users.asmetics = {
    isNormalUser = true;
    description = "asmetics";
    extraGroups = [ "networkmanager" "wheel" "bluetooth" ]; 
    shell = pkgs.zsh;
    packages = with pkgs; [ ];
  };

  programs.zsh.enable = true;
}
