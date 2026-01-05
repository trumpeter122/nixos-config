{ pkgs, ... }:
{
  home.packages = with pkgs; [
    alacritty
    bluetui
    btop
    fastfetch
    kitty
    nautilus
    neovim
    okular
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
