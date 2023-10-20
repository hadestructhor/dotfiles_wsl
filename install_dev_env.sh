#!/bin/bash

echo 'Generating ssh keypair for Github...'
ssh-keygen -t ed25519 -f id_github_hadestructhor

echo 'Moving ssh keys to ~/.ssh folder...'
mv id_github_hadestructhor ~/.ssh/id_github_hadestructhor
mv id_github_hadestructhor.pub ~/ssh/id_github_hadestructhor.pub

echo 'Starting ssh-agent in the background...'
eval "$(ssh-agent -s)"

echo 'Add ssh-key to ssh-agent...'
ssh-add ~/.ssh/id_github_hadestructhor

echo 'Showing public key to add to Github...'
echo ~/.ssh/id_github_hadestructhor.pub

echo 'Installing build-essential...'
sudo apt install build-essential

echo "Installing Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Installing zsh..."
brew install zsh

echo 'Installin OhMyZsh...'
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Setting zsh as default shell..."
chsh -s /bin/zsh

echo 'Installing sdkman...'
brew install sdkman

echo 'Installling my LazyVim config...'
git clone https://github.com/hadestructhor/LazyVim ~/.config/LazyVim

echo 'Moving all the . files...'
cp .gitconfig ../.gitconfig
cp .nvims ../.nvims
cp .zsh_alias ../.zsh_alias
cat .zshrc >../.zshrc
cat .profile >../.profile
touch ~/.ssh/config && cat .ssh_config >~/.ssh/config

echo 'Installing tmux...'
brew install tmux

echo 'Configuring tmux...'
mkdir -p ~/.config/tmux/
cp tmux.conf ~/.config/tmux/tmux.conf

echo 'Installing lazygit...'
brew install jesseduffield/lazygit/lazygit

echo 'Installing nim...'
curl https://nim-lang.org/choosenim/init.sh -sSf | sh

echo 'Installing rust...'
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

echo 'Installing Zip, Unzip and sed...'
sudo apt-get install unzip
sudo apt-get install zip
sudo apt-get install sed

echo 'Installing Kotlin...'
npm install -g @angular/cli

echo 'Installing snap...'
sudo apt install snapd
sudo snap install core

echo 'Starting snap service...'
sudo systemctl start snapd.service

echo 'Sourcing .zshrc'
source .zshrc

echo 'Installing jdk 8, 11, 17 and 21...'
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
npm install -g @angular/cl

echo 'Installing Intellij IDEA...'
sudo snap install intellij-idea-community --classic
sudo snap install intellij-idea-ultimate --classic

echo 'Installing Android Studio...'
sudo snap install android-studio --classic

echo 'Installing Sublime text...'
sudo apt-get install sublime-text -y

echo 'Installing VS Code...'
sudo apt-get install code -y

echo 'Installing DBeaver CE...'
sudo snap install dbeaver-ce

echo 'Installing draw.io'
sudo snap install drawio

echo 'Installing Postman...'
sudo snap install postman

echo 'Installing PostgreSQL...'
sudo apt-get -y install postgresql
