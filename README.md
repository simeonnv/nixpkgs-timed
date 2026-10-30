# nixpkgs-timed

```nix
{
  inputs = {
    nixpkgs-timed.url = "github:simeonnv/nixpkgs-timed";
    nixpkgs.follows = "nixpkgs-timed/nixpkgs-7d";
  };

  outputs = { nixpkgs, ... }: {
    packages.x86_64-linux.default = nixpkgs.legacyPackages.x86_64-linux.hello;
  };
}
```

Available setbacks: `nixpkgs-1d`, `nixpkgs-2d`, `nixpkgs-3d`, `nixpkgs-5d`,
`nixpkgs-7d`, `nixpkgs-14d`, `nixpkgs-30d`, `nixpkgs-60d`.
