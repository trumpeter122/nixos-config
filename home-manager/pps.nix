{ pkgs, ... }:
let
  dev = with pkgs; [
    cargo
    lazygit
    python3
    rustc
    uv
  ];
  gui = with pkgs; [
    libreoffice
    kdePackages.okular
    nautilus
    onlyoffice-desktopeditors
    vscodium
    zotero
  ];
  terminal = with pkgs; [
    alacritty
    bluetui
    btop
    fastfetch
    fzf
    kitty
    neovim
    peaclock
    ranger
    starship
    tree
    ttyper
    yazi
    zellij
    zinit
    zoxide
  ];
in
{
  home.packages = dev ++ gui ++ terminal;

  home.programs.steam.enable = true;
}
