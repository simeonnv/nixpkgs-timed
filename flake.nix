{
  description = "nixpkgs-unstable pinned to fixed setbacks";

  inputs = {
    nixpkgs-1d.url = "github:NixOS/nixpkgs/d357a2b54f0b6dc4aeb4e993190a52cf151b6f24";
    nixpkgs-2d.url = "github:NixOS/nixpkgs/885ba4d038f10c3d17d7a92e8c3cc185b99c9158";
    nixpkgs-3d.url = "github:NixOS/nixpkgs/885ba4d038f10c3d17d7a92e8c3cc185b99c9158";
    nixpkgs-5d.url = "github:NixOS/nixpkgs/58deea654ec5dd0644f31c840a07c29fa0592528";
    nixpkgs-7d.url = "github:NixOS/nixpkgs/d3b13ad75cc492690728f9307e443dec9ef9a20e";
    nixpkgs-14d.url = "github:NixOS/nixpkgs/f20cd90e28fe0403873f473b29e42662cd86e8c4";
    nixpkgs-30d.url = "github:NixOS/nixpkgs/c9fe7d12cd78d1adcd12dd15e24432dde5b155a0";
    nixpkgs-60d.url = "github:NixOS/nixpkgs/9387b3fcc0c23c86661636da63faabad4235a0a6";
  };

  outputs = inputs: {
    info = builtins.mapAttrs (_: input: {
      inherit (input) rev lastModifiedDate;
    }) (removeAttrs inputs [ "self" ]);
  };
}
