{
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
  services.openssh.enable = true;
  networking.hostName = "blackbox";
  networking.networkmanager.enable = true;

  nixpkgs.config.allowUnfree = true;
  hardware.enableRedistributableFirmware = true;
  system.stateVersion = "25.11";
}
