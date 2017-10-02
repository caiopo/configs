#! /bin/bash

CONFIG_DIR=~/.config
CODE_DIR=${CONFIG_DIR}/Code/User
FISH_DIR=${CONFIG_DIR}/fish

# vscode
ln -s $(realpath keybindings.json) ${CODE_DIR}/keybindings.json
ln -s $(realpath settings.json) ${CODE_DIR}/settings.json

# git
ln -s $(realpath gitconfig) ~/.gitconfig

# fish
ln -s $(realpath config.fish) ${FISH_DIR}/config.fish
ln -s $(realpath functions) ${FISH_DIR}/functions
