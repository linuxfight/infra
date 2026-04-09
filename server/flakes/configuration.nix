{
  pkgs,
  ...
}:

{
  nix.nixPath = [
    "nixos-config=/home/main/config/flakes/configuration.nix"
    "nixpkgs=/nix/var/nix/profiles/per-user/root/channels/nixos"
    "/nix/var/nix/profiles/per-user/root/channels"
  ];

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  imports = [
    ./hardware-configuration.nix
    ./shell.nix
    ./secrets.nix
  ];

  boot.loader.grub.enable = true;
  boot.loader.grub = {
    efiSupport = true;
    efiInstallAsRemovable = true;
    device = "nodev";
  };

  networking.hostName = "blackbox";
  networking.networkmanager.enable = true;
  networking.wg-quick.interfaces.wg0 = {
    configFile = "/home/main/config/wg/server.conf";
    autostart = true;
  };
  networking.firewall.trustedInterfaces = [ "wg0" ];

  virtualisation.docker.enable = true;

  environment.systemPackages = with pkgs; [
    curl
    gitMinimal
    nginx
    zsh
    vim
    ncurses
    neofetch
    tree
    btop
  ];

  services.openssh.enable = true;
  # services.k3s = {
  #   enable = true;
  #   role = "server";
  #   clusterInit = true;
  #   extraFlags = "--tls-san 10.8.0.3";
  # };

  system.stateVersion = "25.11";
}
