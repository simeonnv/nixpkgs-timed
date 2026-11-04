{
  description = "nixpkgs-unstable pinned to fixed setbacks";

  inputs = {
    nixpkgs-1d.url = "github:NixOS/nixpkgs/f9887a8a434bfba06e20dfc77bc8e0628266af84";
    nixpkgs-2d.url = "github:NixOS/nixpkgs/d357a2b54f0b6dc4aeb4e993190a52cf151b6f24";
    nixpkgs-3d.url = "github:NixOS/nixpkgs/a0788123ada57ec92a79ab2581cda6d3c6cca75f";
    nixpkgs-5d.url = "github:NixOS/nixpkgs/e62746b0b472753ef019baceab6f1e2e52014980";
    nixpkgs-7d.url = "github:NixOS/nixpkgs/c4c49d9b94a6e75984cbb517136ca2b8566cad9f";
    nixpkgs-14d.url = "github:NixOS/nixpkgs/5adc50831c259f87faeb09ddf930d43597197473";
    nixpkgs-30d.url = "github:NixOS/nixpkgs/73e728ddb6b7a12d18808f510813a13ee1fe4cce";
    nixpkgs-60d.url = "github:NixOS/nixpkgs/5545adfad2e98de106a5544ca7067e03010410bd";
  };

  outputs = inputs: {
    info = builtins.mapAttrs (_: input: {
      inherit (input) rev lastModifiedDate;
    }) (removeAttrs inputs [ "self" ]);
  };
}
