{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    
    burpsuitepro = {
      url = "github:xiv3r/Burpsuite-Professional";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, burpsuitepro, ... }@inputs:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
        config.allowUnfree = true;
      };
    in {
      nixosConfigurations."asmetics-desktop" = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [
          ./hosts/asmetics-desktop.nix
          ./shared-packages.nix
          {
            _module.args = {
              inherit inputs;
              application = burpsuitepro;  # Pass the burpsuitepro input as 'application'
            };
          }
        ];
      };
    };
}