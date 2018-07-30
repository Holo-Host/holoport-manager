{ }:

let
  pkgs = import <nixpkgs> {};
  python = import ./requirements.nix { inherit pkgs; };
in python.mkDerivation {
  name = "holoport-manager-1.0.0";
  src = ./.;
  buildInputs = [
    python.packages."Flask"
    #python.packages."flake8"
    #python.packages."pytest"
  ];
  propagatedBuildInputs = builtins.attrValues python.packages;
  #checkPhase = ''
  #  export NO_TESTS_OVER_WIRE=1
  #  export PYTHONDONTWRITEBYTECODE=1

  #  flake8 src/
  #  py.test --cov=src -cov-report term-missing
  #  coverage html
  #'';
}
