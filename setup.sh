#!/usr/bin/env bash

set -e

cd $(dirname $0)

hard_create_symbol_link() {
  _source_path=$(realpath $1)
  _target_path=$2

  if [ -f "$_target_path" ] || [ -d "$_target_path" ]; then
    echo "--- Found existing configuration at the target path, removing it => ${_target_path}"
    rm -rf $_target_path
  fi
  echo "--- Create symbol links ${_source_path} => ${_target_path}"
  ln -sf ${_source_path} ${_target_path}
}

hard_create_symbol_link ./zshrc ~/.zshrc
hard_create_symbol_link ./zshrc.local ~/.zshrc.local
hard_create_symbol_link ./aliases ~/.aliases
hard_create_symbol_link ./aliases.local ~/.aliases.local
hard_create_symbol_link ./tmux.conf ~/.tmux.conf
hard_create_symbol_link ./gitconfig ~/.gitconfig
hard_create_symbol_link ./gitconfig.local ~/.gitconfig.local
hard_create_symbol_link ./gitmessage ~/.gitmessage
hard_create_symbol_link ./kitty ~/.config/kitty
hard_create_symbol_link ./nvim ~/.config/nvim
