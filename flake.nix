{
  description = "nixpkgs-unstable pinned to fixed setbacks";

  inputs = {
    nixpkgs-1d.url = "github:NixOS/nixpkgs/6dadaf4375be35033e1c84395adbd53ff5fded96";
    nixpkgs-2d.url = "github:NixOS/nixpkgs/6dadaf4375be35033e1c84395adbd53ff5fded96";
    nixpkgs-3d.url = "github:NixOS/nixpkgs/13e53762c5afaf384d4614e94527a9ccfafe41d0";
    nixpkgs-5d.url = "github:NixOS/nixpkgs/f9887a8a434bfba06e20dfc77bc8e0628266af84";
    nixpkgs-7d.url = "github:NixOS/nixpkgs/a0788123ada57ec92a79ab2581cda6d3c6cca75f";
    nixpkgs-14d.url = "github:NixOS/nixpkgs/674a2028661e550a97400c1cc992b9cca9a668a1";
    nixpkgs-30d.url = "github:NixOS/nixpkgs/39ad350a0602fa0a58a544344e3e9187526ea45c";
    nixpkgs-60d.url = "github:NixOS/nixpkgs/da39501c8d0a093136854eddcd6927c8a8bb0d8f";
  };

  outputs = inputs: {
    info = builtins.mapAttrs (_: input: {
      inherit (input) rev lastModifiedDate;
    }) (removeAttrs inputs [ "self" ]);
  };
}
