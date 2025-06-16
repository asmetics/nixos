# configuration.nix
{ config, pkgs, ... }:

{
  imports = [
    ./hosts/asmetics-desktop.nix
  ];
}
