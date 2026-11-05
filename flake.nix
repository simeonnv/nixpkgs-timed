{
  description = "nixpkgs-unstable pinned to fixed setbacks";

  inputs = {
    nixpkgs-1d.url = "github:NixOS/nixpkgs/9d3b8db48266c17be0b5f9c6360c3ecfbac3d1f5";
    nixpkgs-2d.url = "github:NixOS/nixpkgs/ea9e3ef341e11c193537f674f821a99f9f436729";
    nixpkgs-3d.url = "github:NixOS/nixpkgs/5c9de89ec55bff981cb8da1a4ee92b10f1438ffc";
    nixpkgs-5d.url = "github:NixOS/nixpkgs/885ba4d038f10c3d17d7a92e8c3cc185b99c9158";
    nixpkgs-7d.url = "github:NixOS/nixpkgs/e62746b0b472753ef019baceab6f1e2e52014980";
    nixpkgs-14d.url = "github:NixOS/nixpkgs/5adc50831c259f87faeb09ddf930d43597197473";
    nixpkgs-30d.url = "github:NixOS/nixpkgs/aa48d347080940b8a2b8d2f48228674e280a3514";
    nixpkgs-60d.url = "github:NixOS/nixpkgs/17de0b976395537756f30a3e78f2f06e5cec89ed";
  };

  outputs = inputs: {
    info = builtins.mapAttrs (_: input: {
      inherit (input) rev lastModifiedDate;
    }) (removeAttrs inputs [ "self" ]);
  };
}
