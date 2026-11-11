{
  description = "nixpkgs-unstable pinned to fixed setbacks";

  inputs = {
    nixpkgs-1d.url = "github:NixOS/nixpkgs/4fe25e12eb9f4c744966dd3de5a05246cf098601";
    nixpkgs-2d.url = "github:NixOS/nixpkgs/4fe25e12eb9f4c744966dd3de5a05246cf098601";
    nixpkgs-3d.url = "github:NixOS/nixpkgs/4fe25e12eb9f4c744966dd3de5a05246cf098601";
    nixpkgs-5d.url = "github:NixOS/nixpkgs/6dadaf4375be35033e1c84395adbd53ff5fded96";
    nixpkgs-7d.url = "github:NixOS/nixpkgs/ea9e3ef341e11c193537f674f821a99f9f436729";
    nixpkgs-14d.url = "github:NixOS/nixpkgs/c4c49d9b94a6e75984cbb517136ca2b8566cad9f";
    nixpkgs-30d.url = "github:NixOS/nixpkgs/8edc0c72e3a38faf5434e40d1f19431125fe4b30";
    nixpkgs-60d.url = "github:NixOS/nixpkgs/aff8a0b28396750446e5537a96461bc4facdb287";
  };

  outputs = inputs: {
    info = builtins.mapAttrs (_: input: {
      inherit (input) rev lastModifiedDate;
    }) (removeAttrs inputs [ "self" ]);
  };
}
