#!/bin/bash

echo 'Updating installing...'

sudo apt-get update

echo 'Installing build-essential...'

sudo apt install build-essential

echo "Installing Homebrew..."

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Installing oh-my-zsh..."

brew install zsh

echo "Setting zsh as default shell..."

chsh -s /bin/zsh

echo 'Installing sdkman...'

brew install sdkman

echo 'Installing nim...'

curl https://nim-lang.org/choosenim/init.sh -sSf | sh

echo 'Installing rust...'

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

echo 'Installing Zip, Unzip and sed...'
sudo apt-get install unzip
sudo apt-get install zip
sudo apt-get install sed

echo 'Installing Kotlin...'

sdk install kotlin

echo 'Installing Java 8, 11, 17 and 21...'
sdk install java 8.0.382-tem
sdk install java 11.0.20.1-tem
sdk install java 17-open
sdk install java 21-open

echo 'Installing C++ compilers...'
sudo apt-get install g++

echo 'Installing Python 3...'
sudo apt install python3

echo 'Installing nvm and latest node version...'
nvm install stable
nvm use stable

echo 'Installing Angular CLI...'
npm install -g @angular/cli

echo 'Moving all the . files...'
cp .gitconfig ../.gitconfig
cp .nvims ../.nvims
cp .zsh_alias ../.zsh_alias
cat .zshrc >../zshrc

echo 'Switching to zsh...'

exec zsh
