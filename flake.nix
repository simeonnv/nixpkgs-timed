{
  description = "nixpkgs-unstable pinned to fixed setbacks";

  inputs = {
    nixpkgs-1d.url = "github:NixOS/nixpkgs/13e53762c5afaf384d4614e94527a9ccfafe41d0";
    nixpkgs-2d.url = "github:NixOS/nixpkgs/ea9e3ef341e11c193537f674f821a99f9f436729";
    nixpkgs-3d.url = "github:NixOS/nixpkgs/f9887a8a434bfba06e20dfc77bc8e0628266af84";
    nixpkgs-5d.url = "github:NixOS/nixpkgs/a0788123ada57ec92a79ab2581cda6d3c6cca75f";
    nixpkgs-7d.url = "github:NixOS/nixpkgs/e62746b0b472753ef019baceab6f1e2e52014980";
    nixpkgs-14d.url = "github:NixOS/nixpkgs/5adc50831c259f87faeb09ddf930d43597197473";
    nixpkgs-30d.url = "github:NixOS/nixpkgs/e2ccecbf30866802b1db536246e0939eccbd7bfb";
    nixpkgs-60d.url = "github:NixOS/nixpkgs/17de0b976395537756f30a3e78f2f06e5cec89ed";
  };

  outputs = inputs: {
    info = builtins.mapAttrs (_: input: {
      inherit (input) rev lastModifiedDate;
    }) (removeAttrs inputs [ "self" ]);
  };
}
