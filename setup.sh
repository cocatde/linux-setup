#!/usr/bin/env bash

set -e

cd $(dirname $0)

hard_create_symbol_link() {
  _source_path=$(realpath $1)
  _target_path=$2
  
  echo "--- Create symbol links ${_source_path} => ${_target_path}"

  if test -f "$_target_path"; then
    rm $_target_path
  fi
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
hard_create_symbol_link ./kitty/dracula.conf ~/.config/kitty/dracula.conf
hard_create_symbol_link ./kitty/kitty.conf ~/.config/kitty/kitty.conf
hard_create_symbol_link ./neovim ~/.config/nvim