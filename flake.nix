{
  description = "nixpkgs-unstable pinned to fixed setbacks";

  inputs = {
    nixpkgs-1d.url = "github:NixOS/nixpkgs/4fe25e12eb9f4c744966dd3de5a05246cf098601";
    nixpkgs-2d.url = "github:NixOS/nixpkgs/6dadaf4375be35033e1c84395adbd53ff5fded96";
    nixpkgs-3d.url = "github:NixOS/nixpkgs/13e53762c5afaf384d4614e94527a9ccfafe41d0";
    nixpkgs-5d.url = "github:NixOS/nixpkgs/9a6cbf4722bdbbef65f9e0400452ca088e31dc4b";
    nixpkgs-7d.url = "github:NixOS/nixpkgs/d357a2b54f0b6dc4aeb4e993190a52cf151b6f24";
    nixpkgs-14d.url = "github:NixOS/nixpkgs/674a2028661e550a97400c1cc992b9cca9a668a1";
    nixpkgs-30d.url = "github:NixOS/nixpkgs/39ad350a0602fa0a58a544344e3e9187526ea45c";
    nixpkgs-60d.url = "github:NixOS/nixpkgs/a391f95d4557d685fd8e5dc0d4b1f9271aa2f342";
  };

  outputs = inputs: {
    info = builtins.mapAttrs (_: input: {
      inherit (input) rev lastModifiedDate;
    }) (removeAttrs inputs [ "self" ]);
  };
}
