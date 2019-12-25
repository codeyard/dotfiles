#!/bin/sh

# ---------------------------------------------------------------------
# Xcode
# ---------------------------------------------------------------------

# Copy Themes
cd ~/Library/Developer
mkdir -p 'Xcode'
cd Xcode
mkdir -p 'UserData'
cd UserData
mkdir -p 'FontAndColorThemes'
cp ~/Projects/dotfiles/apps/xcode/*.xccolortheme ~/Library/Developer/Xcode/UserData/FontAndColorThemes/