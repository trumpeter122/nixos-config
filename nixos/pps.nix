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
}
