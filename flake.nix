{
  description = "nixpkgs-unstable pinned to fixed setbacks";

  inputs = {
    nixpkgs-1d.url = "github:NixOS/nixpkgs/19cfded70b91ca0981373973c5b1efffdd4d6647";
    nixpkgs-2d.url = "github:NixOS/nixpkgs/e21fec321d73511849707a7585e4ea155ee4bf40";
    nixpkgs-3d.url = "github:NixOS/nixpkgs/e21fec321d73511849707a7585e4ea155ee4bf40";
    nixpkgs-5d.url = "github:NixOS/nixpkgs/5d2b81a7a3be3e2f832879028e4d60abbf58e9a0";
    nixpkgs-7d.url = "github:NixOS/nixpkgs/2074cc672349f14240fb7ea90d509e0b643e9dd4";
    nixpkgs-14d.url = "github:NixOS/nixpkgs/6dadaf4375be35033e1c84395adbd53ff5fded96";
    nixpkgs-30d.url = "github:NixOS/nixpkgs/5adc50831c259f87faeb09ddf930d43597197473";
    nixpkgs-60d.url = "github:NixOS/nixpkgs/35e212742ceab4ae1dcfbfd9039a39215c816e8e";
  };

  outputs = inputs: {
    info = builtins.mapAttrs (_: input: {
      inherit (input) rev lastModifiedDate;
    }) (removeAttrs inputs [ "self" ]);
  };
}
