{ stdenvNoCC, git, hugo, just }:

stdenvNoCC.mkDerivation {
  name = "mkdocs-berkeleyfee";
  src = ./.;

  nativeBuildInputs = [
    python313
    python313Packages.mkdocs-material
  ];
}
