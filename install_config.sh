#!/bin/sh

# ---------------------------------------------------------------------
# Sublime Text
# ---------------------------------------------------------------------
# Create needed directories
cd ~/Library/Application\ Support
mkdir -p 'Sublime Text 3'
cd Sublime\ Text\ 3
mkdir -p 'Installed Packages'
mkdir -p 'Packages'
cd Packages
mkdir -p 'User'

# Symlink all Snippets
ln -sf ~/Projects/dotfiles/apps/sublime-text/User/Code\ Snippets ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Code\ Snippets
ln -sf ~/Projects/dotfiles/apps/sublime-text/User/codeyard\ Snippets ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/codeyard\ Snippets
ln -sf ~/Projects/dotfiles/apps/sublime-text/User/ColdFusion\ Snippets ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/ColdFusion\ Snippets
ln -sf ~/Projects/dotfiles/apps/sublime-text/User/HTML\ Snippets ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/HTML\ Snippets


# Symlink keymaps
ln -sf ~/Projects/dotfiles/apps/sublime-text/User/*.sublime-keymap ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/

# Symlink all sublime-settings files
ln -sf ~/Projects/dotfiles/apps/sublime-text/User/*.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/

# Symlink all theme files
ln -sf ~/Projects/dotfiles/apps/sublime-text/User/*.tmTheme ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/
ln -sf ~/Projects/dotfiles/apps/sublime-text/User/*.hidden-tmTheme ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/


# Symlink color helper palettes
ln -sf ~/Projects/dotfiles/apps/sublime-text/User/*.palettes ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/

# Add Command line tool
#ln -s "/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl


# Use Sublime Text as the editor for many commands that prompt for input
export EDITOR='subl -w'



# ---------------------------------------------------------------------
# Visual Source Code
# ---------------------------------------------------------------------
# Create needed directories
cd ~/Library/Application\ Support
mkdir -p Code/User/snippets

# Symlink all Snippets
ln -sf ~/Projects/dotfiles/apps/visual-studio-code/User/snippets/* ~/Library/Application\ Support/Code/User/snippets

# Symlink all config files
ln -sf ~/Projects/dotfiles/apps/visual-studio-code/User/*.json ~/Library/Application\ Support/Code/User/



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