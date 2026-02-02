{ pkgs, lib, config, inputs, ... }:

{
  packages = with pkgs; [ 
    git 
    git-lfs
    yaml2json
    watchexec
    just
  ];

  languages = {
    nix.enable = true;

    python = {
      enable = true;
      manylinux.enable = false;
      venv.enable = true;
      uv = {
        enable = true;
        sync.enable = true;
      };
    };
  };

  difftastic.enable = true;

  git-hooks = {
    enable = true;
    hooks = {
      shellcheck.enable = true;
      markdownlint = {
        enable = true;
        settings.configuration = {
          MD013 = {
            line_length = 120;
          };
          MD033 = false;
        };
      };
    };
  };
}
