{ pkgs, lib, config, ... }: {
  imports = [
    ./hydra
    ./licenses
  ];
  
  hydra-dummy.enable = true;
  licenses.enable = true;
} 
