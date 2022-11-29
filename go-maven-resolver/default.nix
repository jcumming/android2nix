{
  lib,
  buildGo119Module,
  fetchFromGitHub,
}: let
  inherit (lib) strings;
in
  buildGo119Module rec {
    pname = "go-maven-resolver";
    version = "v1.1.2";

    vendorSha256 = "sha256-dlqI+onfeo4tTwmHeq8heVKRzLU1gFEQ+4iv+8egN90=";

    src = fetchFromGitHub rec {
      owner = "status-im";
      repo = pname;
      rev = "bd9da57e5ee35bbc79f20050dab14dad74afbd29";
      sha256 = "sha256-1RWlvijJS+Tal6v72g4bGzfgglSbK2aTpS8Bzc846UE=";
    };
  }
