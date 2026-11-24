{
  description = "nixpkgs-unstable pinned to fixed setbacks";

  inputs = {
    nixpkgs-1d.url = "github:NixOS/nixpkgs/93a9ed0a866099a230ed5146a5bb7d16fd5c9b14";
    nixpkgs-2d.url = "github:NixOS/nixpkgs/93a9ed0a866099a230ed5146a5bb7d16fd5c9b14";
    nixpkgs-3d.url = "github:NixOS/nixpkgs/b758f1622588b4d5ce019971748a68be80e5943c";
    nixpkgs-5d.url = "github:NixOS/nixpkgs/e21fec321d73511849707a7585e4ea155ee4bf40";
    nixpkgs-7d.url = "github:NixOS/nixpkgs/5d2b81a7a3be3e2f832879028e4d60abbf58e9a0";
    nixpkgs-14d.url = "github:NixOS/nixpkgs/4fe25e12eb9f4c744966dd3de5a05246cf098601";
    nixpkgs-30d.url = "github:NixOS/nixpkgs/901c54c08bdc20e00c2b3c73716b97497b1b3c74";
    nixpkgs-60d.url = "github:NixOS/nixpkgs/34ca302a9572963c02e385c056be37c85ff51b77";
  };

  outputs = inputs: {
    info = builtins.mapAttrs (_: input: {
      inherit (input) rev lastModifiedDate;
    }) (removeAttrs inputs [ "self" ]);
  };
}
