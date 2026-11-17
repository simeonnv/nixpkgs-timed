{
  description = "nixpkgs-unstable pinned to fixed setbacks";

  inputs = {
    nixpkgs-1d.url = "github:NixOS/nixpkgs/5d2b81a7a3be3e2f832879028e4d60abbf58e9a0";
    nixpkgs-2d.url = "github:NixOS/nixpkgs/e126e9e73c335158ff8279ac14d5f4afec153716";
    nixpkgs-3d.url = "github:NixOS/nixpkgs/2074cc672349f14240fb7ea90d509e0b643e9dd4";
    nixpkgs-5d.url = "github:NixOS/nixpkgs/f6bf1059f02576e0b913c7b49d5e4eb6dda9cc22";
    nixpkgs-7d.url = "github:NixOS/nixpkgs/4fe25e12eb9f4c744966dd3de5a05246cf098601";
    nixpkgs-14d.url = "github:NixOS/nixpkgs/f9887a8a434bfba06e20dfc77bc8e0628266af84";
    nixpkgs-30d.url = "github:NixOS/nixpkgs/f20cd90e28fe0403873f473b29e42662cd86e8c4";
    nixpkgs-60d.url = "github:NixOS/nixpkgs/a32edd7654519351e48e80372a928df336394670";
  };

  outputs = inputs: {
    info = builtins.mapAttrs (_: input: {
      inherit (input) rev lastModifiedDate;
    }) (removeAttrs inputs [ "self" ]);
  };
}
