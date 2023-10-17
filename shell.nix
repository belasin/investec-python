let 
  pkgs = import <nixpkgs> { };
in pkgs.mkShell rec {
  name = "investec-python";
  buildInputs = with pkgs; [
    (python311.withPackages (ps: [ps.pip]))
  ];
  shellHook = ''
    export PATH=${pkgs.python311}/bin:$PATH
  '';
}
