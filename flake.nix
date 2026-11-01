{
  description = "nixpkgs-unstable pinned to fixed setbacks";

  inputs = {
    nixpkgs-1d.url = "github:NixOS/nixpkgs/885ba4d038f10c3d17d7a92e8c3cc185b99c9158";
    nixpkgs-2d.url = "github:NixOS/nixpkgs/e62746b0b472753ef019baceab6f1e2e52014980";
    nixpkgs-3d.url = "github:NixOS/nixpkgs/e62746b0b472753ef019baceab6f1e2e52014980";
    nixpkgs-5d.url = "github:NixOS/nixpkgs/d3b13ad75cc492690728f9307e443dec9ef9a20e";
    nixpkgs-7d.url = "github:NixOS/nixpkgs/674a2028661e550a97400c1cc992b9cca9a668a1";
    nixpkgs-14d.url = "github:NixOS/nixpkgs/f20cd90e28fe0403873f473b29e42662cd86e8c4";
    nixpkgs-30d.url = "github:NixOS/nixpkgs/1ec21f6ee4970c41e0824c539c52a50e91fab898";
    nixpkgs-60d.url = "github:NixOS/nixpkgs/e8be7818e19ada32105a8af937a6a473b38167ca";
  };

  outputs = inputs: {
    info = builtins.mapAttrs (_: input: {
      inherit (input) rev lastModifiedDate;
    }) (removeAttrs inputs [ "self" ]);
  };
}
