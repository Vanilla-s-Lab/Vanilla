{ lib, config, ... }:
let cfg = config.enableGNOME; in
{
  options = with lib; {
    enableGNOME.enable = mkOption {
      type = types.bool;
      default = true;
    };
  };

  config = lib.mkIf cfg.enable {
    services.xserver.displayManager.gdm.enable = true;
    services.xserver.desktopManager.gnome.enable = true;
  };
}
