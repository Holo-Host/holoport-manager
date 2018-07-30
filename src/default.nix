with import <nixpkgs> {};

python36.withPackages (ps: with ps; [ django_2_0 djangorestframework])