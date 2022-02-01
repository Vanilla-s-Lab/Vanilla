{ ... }:
{
  programs.git.extraConfig."pack" = {
    windowMemory = "2g";
    packSizeLimit = "1g";
  };
}
