{ ... }:
{
  nix.settings.substituters = [ "https://ilya-fedin.cachix.org/" ];
  nix.settings.trusted-public-keys =
    [ "ilya-fedin.cachix.org-1:QveU24a5ePPMh82mAFSxLk1P+w97pRxqe9rh+MJqlag=" ];
}
