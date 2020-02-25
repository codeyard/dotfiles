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

Run `source apps/visual-studio-code/install.sh` to symlink the settings and snippets.



### Xcode

Copy Themes by running `source apps/xcode/install.sh`



### Sublime Text

To install [Package Control for Sublime Text](https://packagecontrol.io/installation) you need to copy the appropriate Python code for your version of Sublime Text into the console (`View > Show Console`) .

Then run `source apps/sublime-text/install.sh` to copy/symlink settings, snippets and themes.



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
