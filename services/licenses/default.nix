{ pkgs, lib, config, ... }: {
  options = {
    licenses.enable = lib.mkEnableOption "enables licenses";
  };
  
  config = lib.mkIf config.hydra-dummy.enable {
    system.activationScripts.licenseMessage = lib.mkAfter ''
      echo "License service enabled."
    '';
  };
}
