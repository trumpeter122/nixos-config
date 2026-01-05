{ pkgs, ... }:
{
  home.packages = with pkgs; [
    alacritty
    bluetui
    btop
    fastfetch
    kdePackages.okular
    kitty
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
