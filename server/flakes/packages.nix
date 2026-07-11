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
    ffmpeg-full
    intel-gpu-tools
    nvtopPackages.intel
  ];
}
