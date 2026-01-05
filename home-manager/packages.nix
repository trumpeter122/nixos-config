{ pkgs, ... }:
{
  home.packages = with pkgs; [
    alacritty
    bluetui
    btop
    fastfetch
    kdePackages.okular
    kitty
    libreoffice
    nautilus
    neovim
    peaclock
    ranger
    starship
    tree
    ttyper
    uv
    yazi
    zellij
  ];
}
