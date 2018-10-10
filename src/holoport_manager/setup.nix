{ pkgs ? import <nixpkgs> {}
, pythonPackages ? pkgs.python3Packages
, setup ? import (pkgs.fetchFromGitHub {
    owner = "datakurre";
    repo = "setup.nix";
    rev = "d991abe23efde4a0bc5de2a0b4672cca0126c151";
    sha256 = "0zglrif1hncs84ia28m03ca324y8aqnjqygzsji7x0bnfn77hpqm";
  })
}:

let overrides = self: super: {
};

in setup {
  inherit pkgs pythonPackages overrides;
  src = ./.;
}
