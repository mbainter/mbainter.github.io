{ pkgs, lib, config, inputs, ... }:

{
  packages = with pkgs; [
    actionlint
    git
    git-lfs
    just
    pinact
    watchexec
    yaml2json
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
