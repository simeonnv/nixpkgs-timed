{
  description = "nixpkgs-unstable pinned to fixed setbacks";

  inputs = {
    nixpkgs-1d.url = "github:NixOS/nixpkgs/6dadaf4375be35033e1c84395adbd53ff5fded96";
    nixpkgs-2d.url = "github:NixOS/nixpkgs/13e53762c5afaf384d4614e94527a9ccfafe41d0";
    nixpkgs-3d.url = "github:NixOS/nixpkgs/9d3b8db48266c17be0b5f9c6360c3ecfbac3d1f5";
    nixpkgs-5d.url = "github:NixOS/nixpkgs/5c9de89ec55bff981cb8da1a4ee92b10f1438ffc";
    nixpkgs-7d.url = "github:NixOS/nixpkgs/885ba4d038f10c3d17d7a92e8c3cc185b99c9158";
    nixpkgs-14d.url = "github:NixOS/nixpkgs/5adc50831c259f87faeb09ddf930d43597197473";
    nixpkgs-30d.url = "github:NixOS/nixpkgs/39ad350a0602fa0a58a544344e3e9187526ea45c";
    nixpkgs-60d.url = "github:NixOS/nixpkgs/e9b9cbecbf6c25ca26c150d78570e6332694a129";
  };

  outputs = inputs: {
    info = builtins.mapAttrs (_: input: {
      inherit (input) rev lastModifiedDate;
    }) (removeAttrs inputs [ "self" ]);
  };
}
