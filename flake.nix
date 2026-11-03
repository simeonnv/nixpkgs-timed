{
  description = "nixpkgs-unstable pinned to fixed setbacks";

  inputs = {
    nixpkgs-1d.url = "github:NixOS/nixpkgs/5c9de89ec55bff981cb8da1a4ee92b10f1438ffc";
    nixpkgs-2d.url = "github:NixOS/nixpkgs/d357a2b54f0b6dc4aeb4e993190a52cf151b6f24";
    nixpkgs-3d.url = "github:NixOS/nixpkgs/885ba4d038f10c3d17d7a92e8c3cc185b99c9158";
    nixpkgs-5d.url = "github:NixOS/nixpkgs/e62746b0b472753ef019baceab6f1e2e52014980";
    nixpkgs-7d.url = "github:NixOS/nixpkgs/d3b13ad75cc492690728f9307e443dec9ef9a20e";
    nixpkgs-14d.url = "github:NixOS/nixpkgs/e513db7b0a65def6f6e17bb55195dfe510871944";
    nixpkgs-30d.url = "github:NixOS/nixpkgs/73e728ddb6b7a12d18808f510813a13ee1fe4cce";
    nixpkgs-60d.url = "github:NixOS/nixpkgs/5545adfad2e98de106a5544ca7067e03010410bd";
  };

  outputs = inputs: {
    info = builtins.mapAttrs (_: input: {
      inherit (input) rev lastModifiedDate;
    }) (removeAttrs inputs [ "self" ]);
  };
}
