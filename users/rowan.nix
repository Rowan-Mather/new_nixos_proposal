{ pkgs, lib, config, ... }: {
  users.users.rowan = {
    isNormalUser = true;
    description = "Rowan";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      kdePackages.kate
    #  thunderbird
    ];
  };
} 
