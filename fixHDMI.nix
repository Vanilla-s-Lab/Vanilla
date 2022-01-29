{ lib, config, ... }:
let cfg = config.fixHDMI; in
{
  options = with lib; {
    fixHDMI.enable = mkOption {
      type = types.bool;
      default = true;
    };
  };

  config = lib.mkIf cfg.enable {
    services.xserver.displayManager.sessionCommands =
      config.services.xserver.displayManager.setupCommands;
  };
}
