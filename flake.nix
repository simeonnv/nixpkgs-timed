{
  description = "nixpkgs-unstable pinned to fixed setbacks";

  inputs = {
    nixpkgs-1d.url = "github:NixOS/nixpkgs/ea9e3ef341e11c193537f674f821a99f9f436729";
    nixpkgs-2d.url = "github:NixOS/nixpkgs/5c9de89ec55bff981cb8da1a4ee92b10f1438ffc";
    nixpkgs-3d.url = "github:NixOS/nixpkgs/d357a2b54f0b6dc4aeb4e993190a52cf151b6f24";
    nixpkgs-5d.url = "github:NixOS/nixpkgs/db379a58acfef9783b46ffde2957dac397c92b85";
    nixpkgs-7d.url = "github:NixOS/nixpkgs/fa45202b90a351983649116adb577827b2a9a679";
    nixpkgs-14d.url = "github:NixOS/nixpkgs/5adc50831c259f87faeb09ddf930d43597197473";
    nixpkgs-30d.url = "github:NixOS/nixpkgs/aa48d347080940b8a2b8d2f48228674e280a3514";
    nixpkgs-60d.url = "github:NixOS/nixpkgs/9b9402b959a2276982ddd5ad3652a38b97f7c40b";
  };

  outputs = inputs: {
    info = builtins.mapAttrs (_: input: {
      inherit (input) rev lastModifiedDate;
    }) (removeAttrs inputs [ "self" ]);
  };
}
