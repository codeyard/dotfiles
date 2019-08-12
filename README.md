# dotfiles

This is a public repository for my personal [dotfiles](https://dotfiles.github.io/). Feel free to explore, learn and copy parts for your own dotfiles.


## Installation

First, do a [clean install of macOS](https://www.imore.com/how-do-clean-install-macos). Then install Xcode from the App Store, open it and accept the license agreement. Run `xcode-select --install` in a terminal to install the Xcode Command Line Tools.

Clone the Git repository to your `~/Projects/` folder (will be created if it doesn't exist). The install script will install [Homebrew](https://brew.sh) and setup Git and the Shell. It will also copy or symlink all of the dotfiles into your home directory.

```bash
mkdir -p ~/Projects
git clone https://github.com/codeyard/dotfiles.git ~/Projects/dotfiles
cd Projects/dotfiles
source install.sh
```


Install the packages and applications defined in `Brewfile`:
```bash
brew bundle
```


Now run `install_config.sh` to copy/symlink settings, snippets and themes to Sublime Text, Visual Source Code, and Xcode.
```bash
source install_config.sh
```


To install [Package Control for Sublime Text](https://packagecontrol.io/installation) you need to copy the appropriate Python code for your version of Sublime Text into the console (`View > Show Console`) .


Optionally copy additional files from Projects folder:
```bash
# Copy color palettes to ~/Library/Colors/:
cp ~/Projects/dotfiles-addons/color-palettes/*.clr ~/Library/Colors/

# Copy fonts to ~/Library/Fonts/:
cp ~/Projects/dotfiles-addons/fonts/*.otf ~/Library/Fonts/
cp ~/Projects/dotfiles-addons/fonts/*.ttf ~/Library/Fonts/
cp ~/Projects/dotfiles-addons/fonts/*.dfont ~/Library/Fonts/

# Copy Sublime Text themes to ~/Library/Colors/:
cp ~/Projects/dotfiles-addons/sublime-text/*.tmTheme ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/
```
