# Generated by pip2nix 0.8.0.dev1
# See https://github.com/johbo/pip2nix

{ pkgs, fetchurl, fetchgit, fetchhg }:

self: super: {
  "PyJWT" = super.buildPythonPackage {
    name = "PyJWT-1.6.4";
    doCheck = false;
    src = fetchurl {
      url = "https://files.pythonhosted.org/packages/00/5e/b358c9bb24421e6155799d995b4aa3aa3307ffc7ecae4ad9d29fd7e07a73/PyJWT-1.6.4.tar.gz";
      sha256 = "0xi1nijkswi2sxq6448nhy3jxrw8mjppfibh8kxx6gymayri7r2f";
    };
  };
  "django" = super.buildPythonPackage {
    name = "django-2.1.2";
    doCheck = false;
    propagatedBuildInputs = [
      self."pytz"
    ];
    src = fetchurl {
      url = "https://files.pythonhosted.org/packages/8b/03/4c74d3712919613f2c611e6689522df507a2753a92049009661a81b4b72f/Django-2.1.2.tar.gz";
      sha256 = "0ibbs76pzy8zd47yviljrp1s66fmbf5b62fixayaznj7pdzavg7g";
    };
  };
  "django-cors-headers" = super.buildPythonPackage {
    name = "django-cors-headers-2.4.0";
    doCheck = false;
    src = fetchurl {
      url = "https://files.pythonhosted.org/packages/44/6d/1c036dd5280e4a0fa5e7fb09be38ce7da19c2698604096560af36ec49b1d/django-cors-headers-2.4.0.tar.gz";
      sha256 = "1qfa9awsj3f0nwygb0vdh4ilcsfi6zinzng73cd5864x2fbyxhn4";
    };
  };
  "django-limits" = super.buildPythonPackage {
    name = "django-limits-0.0.5";
    doCheck = false;
    propagatedBuildInputs = [
      self."django"
    ];
    src = fetchurl {
      url = "https://files.pythonhosted.org/packages/bd/bc/a081fac5d586c370333fa1f3ef93cc9fcc5936d4af30f0e3e679c1a7d487/django-limits-0.0.5.tar.gz";
      sha256 = "0r01004yg6pmi2ldv4ssd850bhfbcs4zhzg3qq8hs8z0bg2sxxrq";
    };
  };
  "djangorestframework" = super.buildPythonPackage {
    name = "djangorestframework-3.8.2";
    doCheck = false;
    src = fetchurl {
      url = "https://files.pythonhosted.org/packages/c4/c0/a0d5a5872fb97c9210fb932116b2bf11f7b159239b00d514f5357b9cf11f/djangorestframework-3.8.2.tar.gz";
      sha256 = "1nd9i6x7w7vid4ksqfal2k194025ypsyr49w357m538g9cz4qwdn";
    };
  };
  "djangorestframework-jwt" = super.buildPythonPackage {
    name = "djangorestframework-jwt-1.11.0";
    doCheck = false;
    propagatedBuildInputs = [
      self."PyJWT"
    ];
    src = fetchurl {
      url = "https://files.pythonhosted.org/packages/35/83/5fdf29d87e5cc04c9ebd2cedf9cd0768c5cd85ed3ee6a4d1dfd1151990de/djangorestframework-jwt-1.11.0.tar.gz";
      sha256 = "19rng6v1sw14mbjp5cplnrgxjnhlj8faalfw02iihi9s5w1k7zjy";
    };
  };
  "pytz" = super.buildPythonPackage {
    name = "pytz-2018.5";
    doCheck = false;
    src = fetchurl {
      url = "https://files.pythonhosted.org/packages/ca/a9/62f96decb1e309d6300ebe7eee9acfd7bccaeedd693794437005b9067b44/pytz-2018.5.tar.gz";
      sha256 = "0xzj5gkpdn2da8m6j47chlp6zrzcypv9m0fjv4236q3jw4fyzfgz";
    };
  };
}
