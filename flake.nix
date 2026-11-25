{
  description = "nixpkgs-unstable pinned to fixed setbacks";

  inputs = {
    nixpkgs-1d.url = "github:NixOS/nixpkgs/619c39f6eac5d1ed6b8f073a9414baf7034b2356";
    nixpkgs-2d.url = "github:NixOS/nixpkgs/93a9ed0a866099a230ed5146a5bb7d16fd5c9b14";
    nixpkgs-3d.url = "github:NixOS/nixpkgs/93a9ed0a866099a230ed5146a5bb7d16fd5c9b14";
    nixpkgs-5d.url = "github:NixOS/nixpkgs/19cfded70b91ca0981373973c5b1efffdd4d6647";
    nixpkgs-7d.url = "github:NixOS/nixpkgs/e21fec321d73511849707a7585e4ea155ee4bf40";
    nixpkgs-14d.url = "github:NixOS/nixpkgs/4fe25e12eb9f4c744966dd3de5a05246cf098601";
    nixpkgs-30d.url = "github:NixOS/nixpkgs/674a2028661e550a97400c1cc992b9cca9a668a1";
    nixpkgs-60d.url = "github:NixOS/nixpkgs/d54020a6ac3211e9f4201631bdf67678818c0cdf";
  };

  outputs = inputs: {
    info = builtins.mapAttrs (_: input: {
      inherit (input) rev lastModifiedDate;
    }) (removeAttrs inputs [ "self" ]);
  };
}
