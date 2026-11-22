{
  description = "nixpkgs-unstable pinned to fixed setbacks";

  inputs = {
    nixpkgs-1d.url = "github:NixOS/nixpkgs/680275f0bb6afce84fbac3e75fc47c5f2272400b";
    nixpkgs-2d.url = "github:NixOS/nixpkgs/19cfded70b91ca0981373973c5b1efffdd4d6647";
    nixpkgs-3d.url = "github:NixOS/nixpkgs/e21fec321d73511849707a7585e4ea155ee4bf40";
    nixpkgs-5d.url = "github:NixOS/nixpkgs/1c872b8c508bbbfebc1b0b74777ff391ce0a574c";
    nixpkgs-7d.url = "github:NixOS/nixpkgs/e126e9e73c335158ff8279ac14d5f4afec153716";
    nixpkgs-14d.url = "github:NixOS/nixpkgs/4fe25e12eb9f4c744966dd3de5a05246cf098601";
    nixpkgs-30d.url = "github:NixOS/nixpkgs/5adc50831c259f87faeb09ddf930d43597197473";
    nixpkgs-60d.url = "github:NixOS/nixpkgs/8825bebf6324e0579d012936eff73379af284b6d";
  };

  outputs = inputs: {
    info = builtins.mapAttrs (_: input: {
      inherit (input) rev lastModifiedDate;
    }) (removeAttrs inputs [ "self" ]);
  };
}
