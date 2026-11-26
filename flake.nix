{
  description = "nixpkgs-unstable pinned to fixed setbacks";

  inputs = {
    nixpkgs-1d.url = "github:NixOS/nixpkgs/619c39f6eac5d1ed6b8f073a9414baf7034b2356";
    nixpkgs-2d.url = "github:NixOS/nixpkgs/619c39f6eac5d1ed6b8f073a9414baf7034b2356";
    nixpkgs-3d.url = "github:NixOS/nixpkgs/93a9ed0a866099a230ed5146a5bb7d16fd5c9b14";
    nixpkgs-5d.url = "github:NixOS/nixpkgs/9996594bd38077de6a018ec17453ba3d99182787";
    nixpkgs-7d.url = "github:NixOS/nixpkgs/e21fec321d73511849707a7585e4ea155ee4bf40";
    nixpkgs-14d.url = "github:NixOS/nixpkgs/f6bf1059f02576e0b913c7b49d5e4eb6dda9cc22";
    nixpkgs-30d.url = "github:NixOS/nixpkgs/d3b13ad75cc492690728f9307e443dec9ef9a20e";
    nixpkgs-60d.url = "github:NixOS/nixpkgs/8d5d270900d3fc75655ea2d9d248b234f6631439";
  };

  outputs = inputs: {
    info = builtins.mapAttrs (_: input: {
      inherit (input) rev lastModifiedDate;
    }) (removeAttrs inputs [ "self" ]);
  };
}
