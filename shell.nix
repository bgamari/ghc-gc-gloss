let nixpkgs = import <nixpkgs> {};
in with nixpkgs; stdenv.mkDerivation {
  name = "demo";
  buildInputs = [ libGL libGLU_combined freeglut glxinfo ];
  LD_LIBRARY_PATH = with pkgs; "${freeglut}/lib:/run/opengl-driver/lib";
}
