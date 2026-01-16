{ pkgs, ... }:
let
  dev = with pkgs; [
    # Git
    koji
    lazygit

    # JS/TS
    nodejs
    pnpm

    # Python
    python3
    uv

    # Rust
    cargo
    rustc

    sqlite
    # texlive
    typst

  ];
  gui = with pkgs; [
    libreoffice
    kdePackages.kdenlive
    kdePackages.okular
    nautilus
    onlyoffice-desktopeditors
    rpi-imager
    syncthing
    vial
    # wechat
    # wemeet
    vlc
    vscodium
    zathura
    zotero
  ];
  terminal = with pkgs; [
    alacritty
    bluetui
    btop
    fastfetch
    ffmpeg
    fzf
    kitty
    neovim
    pandoc
    peaclock
    ranger
    starship
    tree
    ttyper
    wl-clipboard
    xclip
    yazi
    zellij
    zinit
    zoxide

    # Experimental
    xdg-ninja
    chezmoi
    stow
  ];
in
{
  home.packages = dev ++ gui ++ terminal;
}
