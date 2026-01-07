{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    xwayland-satellite
  ];

  programs.niri.enable = true;

  services.xserver.enable = true;
  services.displayManager.cosmic-greeter.enable = true;
  services.desktopManager.gnome.enable = true;
  services.desktopManager.cosmic.enable = true;
  services.system76-scheduler.enable = true;

}
