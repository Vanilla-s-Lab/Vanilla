{ pkgs, ... }:
{
  home.file.".config/qv2ray-vcore".source = pkgs.runCommand "vcore" { } ''
    mkdir $out/
    ln -s ${pkgs.v2ray}/bin/v2ray $out/v2ray && ln -s ${pkgs.v2ray}/bin/v2ctl $out/v2ctl
    ln -s ${pkgs.v2ray-geoip}/share/v2ray/geoip.dat $out/geoip.dat
    ln -s ${pkgs.v2ray-domain-list-community}/share/v2ray/geosite.dat $out/geosite.dat
  '';
}
