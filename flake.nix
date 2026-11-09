{
  description = "nixpkgs-unstable pinned to fixed setbacks";

  inputs = {
    nixpkgs-1d.url = "github:NixOS/nixpkgs/4fe25e12eb9f4c744966dd3de5a05246cf098601";
    nixpkgs-2d.url = "github:NixOS/nixpkgs/4fe25e12eb9f4c744966dd3de5a05246cf098601";
    nixpkgs-3d.url = "github:NixOS/nixpkgs/6dadaf4375be35033e1c84395adbd53ff5fded96";
    nixpkgs-5d.url = "github:NixOS/nixpkgs/9d3b8db48266c17be0b5f9c6360c3ecfbac3d1f5";
    nixpkgs-7d.url = "github:NixOS/nixpkgs/df1e6651c16c38563a164037647a5f00704b3e41";
    nixpkgs-14d.url = "github:NixOS/nixpkgs/d3b13ad75cc492690728f9307e443dec9ef9a20e";
    nixpkgs-30d.url = "github:NixOS/nixpkgs/8edc0c72e3a38faf5434e40d1f19431125fe4b30";
    nixpkgs-60d.url = "github:NixOS/nixpkgs/d5dfd8e6716dde34398bc14bc87c10dece9c8c68";
  };

  outputs = inputs: {
    info = builtins.mapAttrs (_: input: {
      inherit (input) rev lastModifiedDate;
    }) (removeAttrs inputs [ "self" ]);
  };
}
