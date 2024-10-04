{ pkgs, lib, config, ... }: {
  options = {
    hydra-dummy.enable = lib.mkEnableOption "enables hydra-dummy";
  };
  
  config = lib.mkIf config.hydra-dummy.enable {
    system.activationScripts.hydraMessage = lib.mkAfter ''
      echo "Hydra service enabled."
    '';
  };
}
