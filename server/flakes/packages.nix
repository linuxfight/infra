{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    curl
    gitMinimal
    zsh
    neovim
    ncurses
    neofetch
    tree
    btop
  ];
}
