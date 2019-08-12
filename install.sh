#!/bin/bash

# ---------------------------------------------------------------------
# Homebrew (https://www.brew.sh)
# ---------------------------------------------------------------------

# Install Homebrew
if test ! $(which brew); then
	echo -e "\033[0;33mInstalling Homebrew...\033[0m"
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
	echo -e "\033[0;32mHomebrew is already installed.\033[0m"
fi

# Update Homebrew
read -r -p "Update Homebrew packages? [y|N] " response

if [[ $response =~ (yes|y|Y) ]];then
	echo -e "\033[0;33mUpdating Homebrew packages...\033[0m"
	brew update
	brew upgrade
	echo -e "\033[0;32mHomebrew packages updated.\033[0m"
else
	echo "Skipped Homebrew package updates."
fi


# Opt out of Homebrew Analytics
brew analytics off
echo -e "\033[0;33mOpted out of Brew Analytics.\033[0m"



# ---------------------------------------------------------------------
# Git
# ---------------------------------------------------------------------

# Create Symlinks
ln -sf ~/Projects/dotfiles/config/git/gitconfig ~/.gitconfig
ln -sf ~/Projects/dotfiles/config/git/gitexcludes ~/.gitexcludes
ln -sf ~/Projects/dotfiles/config/git/gitignore ~/.gitignore

# Copy Git Completion and Git Prompt
cp ~/Projects/dotfiles/config/git/.git-completion.bash ~/.git-completion.bash
cp ~/Projects/dotfiles/config/git/.git-prompt.sh ~/.git-prompt.sh

# Enable Git Colors
sudo git config --global color.ui true

echo -e "\033[0;33mGit configured.\033[0m"



# ---------------------------------------------------------------------
# Shell
# ---------------------------------------------------------------------

# Make Bash the default shell
chsh -s /bin/bash

# Create Symlinks to Bash config
ln -sf ~/Projects/dotfiles/config/shell/bash_aliases ~/.bash_aliases
ln -sf ~/Projects/dotfiles/config/shell/bash_functions ~/.bash_functions
ln -sf ~/Projects/dotfiles/config/shell/bash_profile ~/.bash_profile
ln -sf ~/Projects/dotfiles/config/shell/bashrc ~/.bashrc
ln -sf ~/Projects/dotfiles/config/shell/editorconfig ~/.editorconfig
ln -sf ~/Projects/dotfiles/config/shell/inputrc ~/.inputrc

# Install iStats (https://github.com/Chris911/iStats)
# brew install ruby
sudo gem install iStats

echo -e "\033[0;33mShell configured.\033[0m"



# ---------------------------------------------------------------------
# Other
# ---------------------------------------------------------------------

# Create a Sites directory
# This is a default directory for macOS user accounts but doesn't come pre-installed
mkdir -p $HOME/Sites