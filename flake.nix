{
  description = "nixpkgs-unstable pinned to fixed setbacks";

  inputs = {
    nixpkgs-1d.url = "github:NixOS/nixpkgs/885ba4d038f10c3d17d7a92e8c3cc185b99c9158";
    nixpkgs-2d.url = "github:NixOS/nixpkgs/e62746b0b472753ef019baceab6f1e2e52014980";
    nixpkgs-3d.url = "github:NixOS/nixpkgs/58deea654ec5dd0644f31c840a07c29fa0592528";
    nixpkgs-5d.url = "github:NixOS/nixpkgs/d3b13ad75cc492690728f9307e443dec9ef9a20e";
    nixpkgs-7d.url = "github:NixOS/nixpkgs/901c54c08bdc20e00c2b3c73716b97497b1b3c74";
    nixpkgs-14d.url = "github:NixOS/nixpkgs/f20cd90e28fe0403873f473b29e42662cd86e8c4";
    nixpkgs-30d.url = "github:NixOS/nixpkgs/b6c8664de9b6cc07fe5666a29f91884ba81197c4";
    nixpkgs-60d.url = "github:NixOS/nixpkgs/e8be7818e19ada32105a8af937a6a473b38167ca";
  };

  outputs = inputs: {
    info = builtins.mapAttrs (_: input: {
      inherit (input) rev lastModifiedDate;
    }) (removeAttrs inputs [ "self" ]);
  };
}
