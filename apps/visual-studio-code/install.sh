#!/bin/sh

# ---------------------------------------------------------------------
# Visual Studio Code
# ---------------------------------------------------------------------

# Create needed directories
cd ~/Library/Application\ Support
mkdir -p Code/User/snippets

# Symlink all Snippets
ln -sf ~/Projects/dotfiles/apps/visual-studio-code/User/snippets/* ~/Library/Application\ Support/Code/User/snippets

# Symlink all config files
ln -sf ~/Projects/dotfiles/apps/visual-studio-code/User/*.json ~/Library/Application\ Support/Code/User/