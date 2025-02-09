{
  fetchFromGitHub,
  rustPlatform,
  perl,
  git
}:

rustPlatform.buildRustPackage rec {
  pname = "yek";
  version = "0.17.0";

  src = fetchFromGitHub {
    owner = "bodo-run";
    repo = pname;  
    tag = "v${version}";
    sha256 = "sha256-5FWjjc7JmEhBjbIy/8A7IGwyC4Rjp581zT+CMUd4XBI=";
  };

  cargoHash = "sha256-GNmSlWyZe2j1OXmKEzCHrSwqBCyJfXoXhkFP/vcK+Qc=";

  nativeBuildInputs = [perl git];
  buildNoDefaultFeatures = true;
}
