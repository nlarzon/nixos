{
  description = "My nixos configuration";

  inputs = {
    # NixOS official package source, using the unstable branch here
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

  };

  outputs = inputs @ {
    nixpkgs, home-manager,
    ...
  }: {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = {inherit inputs;};
      modules = [
        ./configuration.nix
        ./modules
        home-manager.nixosModules.home-manager
      ];
    };
  };
}
