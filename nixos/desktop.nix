{ ... }:
{
  services.xserver.enable = true;
  services.displayManager.ly.enable = true;

  programs.niri.enable = true;
  services.desktopManager.gnome.enable = true;
  services.desktopManager.cosmic.enable = true;
}
