{ pkgs ? import <nixpkgs> {}
, pythonPackages ? pkgs.python3Packages
, setup ? import (pkgs.fetchFromGitHub {
    owner = "datakurre";
    repo = "setup.nix";
    rev = "cac63eaa00eb70437a935a4b82e1d2e2fe156890";
    sha256 = "1rqa79cyj1bzrqz5n7fsrl98zd1npg4ljzi8fmaxsgq5rsa4j78r";
  })
}:

let overrides = self: super: {
};

in setup {
  inherit pkgs pythonPackages overrides;
  src = ./.;
}
