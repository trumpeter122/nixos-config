{ pkgs, ... }:
let
  vialUdevRules = pkgs.writeTextFile {
    name = "vial-udev-rules";
    destination = "/lib/udev/rules.d/59-vial.rules";
    text = ''
      KERNEL=="hidraw*", SUBSYSTEM=="hidraw", ATTRS{serial}=="*vial:f64c2b3c*", MODE="0660", GROUP="users", TAG+="uaccess", TAG+="udev-acl"
    '';
  };
in
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
  services.udev.packages = [ vialUdevRules ];

  virtualisation.virtualbox.host.enable = true;
  virtualisation.virtualbox.host.enableExtensionPack = true;
  users.extraGroups.vboxusers.members = [ "users" ];
  virtualisation.virtualbox.guest.enable = true;
  virtualisation.virtualbox.guest.dragAndDrop = true;
}
