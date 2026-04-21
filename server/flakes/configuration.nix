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
    ./packages.nix
    ./secrets.nix
  ];

  virtualisation.docker.enable = true;
  boot.kernel.sysctl."vm.overcommit_memory" = "1";
  services.openssh.enable = true;
  networking.hostName = "blackbox";
  networking.networkmanager.enable = true;
  networking.wg-quick.interfaces.wg0 = {
    configFile = "/home/main/config/wg/server.conf";
    autostart = true;
  };
  networking.firewall.trustedInterfaces = [ "wg0" ];

  system.stateVersion = "25.11";
}
