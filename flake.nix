{
  description = "nixpkgs-unstable pinned to fixed setbacks";

  inputs = {
    nixpkgs-1d.url = "github:NixOS/nixpkgs/6dadaf4375be35033e1c84395adbd53ff5fded96";
    nixpkgs-2d.url = "github:NixOS/nixpkgs/13e53762c5afaf384d4614e94527a9ccfafe41d0";
    nixpkgs-3d.url = "github:NixOS/nixpkgs/ea9e3ef341e11c193537f674f821a99f9f436729";
    nixpkgs-5d.url = "github:NixOS/nixpkgs/d357a2b54f0b6dc4aeb4e993190a52cf151b6f24";
    nixpkgs-7d.url = "github:NixOS/nixpkgs/885ba4d038f10c3d17d7a92e8c3cc185b99c9158";
    nixpkgs-14d.url = "github:NixOS/nixpkgs/5adc50831c259f87faeb09ddf930d43597197473";
    nixpkgs-30d.url = "github:NixOS/nixpkgs/7dd199b0e2993e37b4775ed66b1c291699608c9f";
    nixpkgs-60d.url = "github:NixOS/nixpkgs/42f17a57f4f6e33b3de3dca0a2a5ea5233169d02";
  };

  outputs = inputs: {
    info = builtins.mapAttrs (_: input: {
      inherit (input) rev lastModifiedDate;
    }) (removeAttrs inputs [ "self" ]);
  };
}
