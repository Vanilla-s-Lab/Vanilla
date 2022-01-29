{ lib, config, ... }:
let cfg = config.minimalGNOME; in
{
  options = with lib; {
    minimalGNOME.enable = mkOption {
      type = types.bool;
      default = true;
    };
  };

  config = lib.mkIf cfg.enable {
    services.gnome.core-utilities.enable = false;
    services.gnome.core-developer-tools.enable = false;
  };
}
