{
  description = "nixpkgs-unstable pinned to fixed setbacks";

  inputs = {
    nixpkgs-1d.url = "github:NixOS/nixpkgs/e21fec321d73511849707a7585e4ea155ee4bf40";
    nixpkgs-2d.url = "github:NixOS/nixpkgs/5d2b81a7a3be3e2f832879028e4d60abbf58e9a0";
    nixpkgs-3d.url = "github:NixOS/nixpkgs/5d2b81a7a3be3e2f832879028e4d60abbf58e9a0";
    nixpkgs-5d.url = "github:NixOS/nixpkgs/2074cc672349f14240fb7ea90d509e0b643e9dd4";
    nixpkgs-7d.url = "github:NixOS/nixpkgs/f6bf1059f02576e0b913c7b49d5e4eb6dda9cc22";
    nixpkgs-14d.url = "github:NixOS/nixpkgs/13e53762c5afaf384d4614e94527a9ccfafe41d0";
    nixpkgs-30d.url = "github:NixOS/nixpkgs/f3a77a0c9b182bf55b71c8f22f99725f38b69a3e";
    nixpkgs-60d.url = "github:NixOS/nixpkgs/0a3468a402c449992505b6a9fc5b06580141b750";
  };

  outputs = inputs: {
    info = builtins.mapAttrs (_: input: {
      inherit (input) rev lastModifiedDate;
    }) (removeAttrs inputs [ "self" ]);
  };
}
