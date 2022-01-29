{ lib, config, ... }:
let cfg = config.allMicrocode; in
{
  options = with lib; {
    allMicrocode.enable = mkOption {
      type = types.bool;
      default = true;
    };
  };

  config = lib.mkIf cfg.enable {
    hardware.cpu.amd.updateMicrocode = true;
    hardware.cpu.intel.updateMicrocode = true;
  };
}
