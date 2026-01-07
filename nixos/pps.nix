{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    git
    vim
    wget
  ];

  programs.firefox.enable = true;
  programs.nh.enable = true;
  programs.steam.enable = true;

  services.v2raya.enable = true;
  services.udev.extraRules = ''
    KERNEL=="hidraw*", SUBSYSTEM=="hidraw", ATTRS{serial}=="*vial:f64c2b3c*", MODE="0660", GROUP="users", TAG+="uaccess", TAG+="udev-acl"
  '';
}
