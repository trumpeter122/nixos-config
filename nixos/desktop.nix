{ pkgs, ... }:
{
  services.xserver.enable = true;
  services.displayManager.cosmic-greeter.enable = true;

  programs.niri.enable = true;
  services.desktopManager.gnome.enable = true;
  services.desktopManager.cosmic.enable = true;

  environment.systemPackages = with pkgs; [
    xwayland-satellite
  ];
}
