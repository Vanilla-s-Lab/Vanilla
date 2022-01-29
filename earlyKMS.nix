{ lib, config, ... }:
let cfg = config.earlyKMS; in
{
  options = with lib; {
    earlyKMS.enable = mkOption {
      type = types.bool;
      default = true;
    };
  };

  config = lib.mkIf cfg.enable {
    boot.initrd.enable = true;
    boot.initrd.kernelModules =
      [ "nvidia" "nvidia_modeset" "nvidia_uvm" "nvidia_drm" ];
  };
}
