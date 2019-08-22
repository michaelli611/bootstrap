#!/bin/bash

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

function brew_install_or_upgrade {
    if brew ls --versions "$1" >/dev/null; then
        HOMEBREW_NO_AUTO_UPDATE=1 brew upgrade "$1"
    else
        HOMEBREW_NO_AUTO_UPDATE=1 brew install "$1"
    fi
}

function brew_cask_install_or_upgrade {
    if brew cask info "$1" >/dev/null; then
        HOMEBREW_NO_AUTO_UPDATE=1 brew cask upgrade "$1"
    else
        HOMEBREW_NO_AUTO_UPDATE=1 brew cask install "$1"
    fi
}

brew_install_or_upgrade cmake
brew_install_or_upgrade htop
brew_install_or_upgrade git
brew_install_or_upgrade macvim
brew_install_or_upgrade openssl
brew_install_or_upgrade python
brew_install_or_upgrade tmux
brew_install_or_upgrade vim

# Casks
brew_cask_install_or_upgrade alfred
brew_cask_install_or_upgrade atom
brew_cask_install_or_upgrade dropbox
brew_cask_install_or_upgrade google-chrome
brew_cask_install_or_upgrade iterm2
brew_cask_install_or_upgrade postman
brew_cask_install_or_upgrade slack
brew_cask_install_or_upgrade spectacle
brew_cask_install_or_upgrade spotify
brew_cask_install_or_upgrade sublime-text

#fonts
brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font

# Delete old versions
brew cleanup

# Add personal bash_profile
echo "source ~/.bootstrap/zshrc/" >> ~/.zshrc
echo "source ~/.bootstrap/vimrc/" >> ~/.vimrc

# Install Vundle for Vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Install all Vim plugins
vim +PluginInstall +qall

# Compile YCM
cd ~/.vim/bundle/YouCompleteMe && ./install.py --clang-completer
