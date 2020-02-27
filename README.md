# dotfiles

This is a public repository for my personal [dotfiles](https://dotfiles.github.io/). Feel free to explore, learn and copy parts for your own dotfiles.


## Installation

First, do a [clean install of macOS](https://www.imore.com/how-do-clean-install-macos). Then install Xcode from the App Store, open it and accept the license agreement. Run `xcode-select --install` in a terminal to install the Xcode Command Line Tools.

Clone the Git repository to your `~/Projects/` folder (will be created if it doesn't exist):

```
mkdir -p ~/Projects
git clone https://github.com/codeyard/dotfiles.git ~/Projects/dotfiles
cd Projects/dotfiles
```



### Homebrew

Install [Homebrew](https://brew.sh) and opt out of its analytics:

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew upgrade
brew analytics off
```

Install the packages and applications defined in `Brewfile`:
```
brew bundle
```



### Git

Create Symlinks to Git configuration, copy Git Completion and Git Prompt:

```
ln -sf ~/Projects/dotfiles/config/git/gitconfig ~/.gitconfig
ln -sf ~/Projects/dotfiles/config/git/gitexcludes ~/.gitexcludes
ln -sf ~/Projects/dotfiles/config/git/gitignore ~/.gitignore

cp ~/Projects/dotfiles/config/git/.git-completion.bash ~/.git-completion.bash
cp ~/Projects/dotfiles/config/git/.git-prompt.sh ~/.git-prompt.sh

sudo git config --global color.ui true
```



### Bash Shell

Make Bash the default shell:
```
chsh -s /bin/bash
```

Create Symlinks to Bash config:
```
ln -sf ~/Projects/dotfiles/config/shell/bash_aliases ~/.bash_aliases
ln -sf ~/Projects/dotfiles/config/shell/bash_functions ~/.bash_functions
ln -sf ~/Projects/dotfiles/config/shell/bash_profile ~/.bash_profile
ln -sf ~/Projects/dotfiles/config/shell/bashrc ~/.bashrc
ln -sf ~/Projects/dotfiles/config/shell/editorconfig ~/.editorconfig
ln -sf ~/Projects/dotfiles/config/shell/inputrc ~/.inputrc
```



### Visual Studio Code

Create needed directories, symlink snippets and config files:

```
cd ~/Library/Application\ Support
mkdir -p Code/User/snippets
ln -sf ~/Projects/dotfiles/apps/visual-studio-code/User/snippets/* ~/Library/Application\ Support/Code/User/snippets
ln -sf ~/Projects/dotfiles/apps/visual-studio-code/User/*.json ~/Library/Application\ Support/Code/User/
```





### Xcode

Copy Themes:

```
cd ~/Library/Developer
mkdir -p 'Xcode'
cd Xcode
mkdir -p 'UserData'
cd UserData
mkdir -p 'FontAndColorThemes'
cp ~/Projects/dotfiles/apps/xcode/*.xccolortheme ~/Library/Developer/Xcode/UserData/FontAndColorThemes/
```




### Sublime Text

To install [Package Control for Sublime Text](https://packagecontrol.io/installation) you need to copy the appropriate Python code for your version of Sublime Text into the console (`View > Show Console`) .

Then run:

```
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
```





### Other

Install [iStats](https://github.com/Chris911/iStats):
```
sudo gem install iStats
```

Create a Sites directory. This is a default directory for macOS user accounts but doesn't come pre-installed:
```
mkdir -p $HOME/Sites
```





### Additional files

Optionally copy additional files from Projects folder:
```
# Copy color palettes to ~/Library/Colors/:
cp ~/Projects/dotfiles-addons/color-palettes/*.clr ~/Library/Colors/

# Copy fonts to ~/Library/Fonts/:
cp ~/Projects/dotfiles-addons/fonts/*.otf ~/Library/Fonts/
cp ~/Projects/dotfiles-addons/fonts/*.ttf ~/Library/Fonts/
cp ~/Projects/dotfiles-addons/fonts/*.dfont ~/Library/Fonts/

# Copy Sublime Text themes to ~/Library/Colors/:
cp ~/Projects/dotfiles-addons/sublime-text/*.tmTheme ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/
```
