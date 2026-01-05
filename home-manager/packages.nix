{ pkgs, ... }:
{
  home.packages = with pkgs; [
    alacritty
    bluetui
    btop
    fastfetch
    git
    kitty
    nautilus
    neovim
    peaclock
    ranger
    starship
    tree
    ttyper
    uv
    vim
    wget
    yazi
    zellij
    zsh
  ];
}
