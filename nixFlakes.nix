{ lib, config, pkgs, ... }:
let cfg = config.nixFlakes; in
{
  options = with lib; {
    nixFlakes.enable = mkOption {
      type = types.bool;
      default = true;
    };
  };

  config = lib.mkIf cfg.enable {
    nix.package = pkgs.nixFlakes;
    nix.extraOptions = ''
      experimental-features = nix-command flakes
    '';
  };
}
