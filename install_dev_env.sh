#!/bin/bash

echo 'Generating ssh keypair for Github...'
ssh-keygen -t ed25519 -f id_hadestructhorvault

echo 'Moving ssh keys to ~/.ssh folder...'
mkdir ~/.ssh
mv id_hadestructhorvault ~/.ssh/id_hadestructhorvault
mv id_hadestructhorvault.pub ~/.ssh/id_hadestructhorvault.pub

echo 'Starting ssh-agent in the background...'
eval "$(ssh-agent -s)"

echo 'Add ssh-key to ssh-agent...'
ssh-add ~/.ssh/id_hadestructhorvault

echo 'Showing public key to add to Github...'
echo ~/.ssh/id_hadestructhorvault.pub

echo 'Generating ssh keypair for Github...'
ssh-keygen -t ed25519 -f id_hadestructhor

echo 'Moving ssh keys to ~/.ssh folder...'
mv id_hadestructhor ~/.ssh/id_hadestructhor
mv id_hadestructhor.pub ~/.ssh/id_hadestructhor.pub

echo 'Starting ssh-agent in the background...'
eval "$(ssh-agent -s)"

echo 'Add ssh-key to ssh-agent...'
ssh-add ~/.ssh/id_hadestructhor

echo 'Showing public key to add to Github...'
echo ~/.ssh/id_hadestructhor.pub

echo 'Installing build-essential...'
sudo apt install build-essential

echo 'Installing curl...'
sudo apt install curl

echo "Installing Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo 'Adding homebrew to .bashrc...'
(
	echo
	echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"'
) >>~/.bashrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

echo 'Sourcing .bashrc...'
source ~/.bashrc

echo "Installing zsh..."
sudo apt install zsh

echo 'Installin OhMyZsh...'
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Setting zsh as default shell..."
sudo chsh -s /bin/zsh

echo 'Installing sdkman...'
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"

echo 'Installling my LazyVim config...'
git clone https://github.com/hadestructhor/LazyVim ~/.config/LazyVim

echo 'Moving all the . files...'
cp .gitconfig ~/.gitconfig
cp .zsh_alias ~/.zsh_alias
cat .zshrc >~/.zshrc
cat .profile >~/.profile

echo 'Installing tmux...'
brew install tmux

echo 'Installing tpm...'
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

echo 'Configuring tmux...'
mkdir -p ~/.config/tmux/
cp tmux.conf ~/.config/tmux/tmux.conf
tmux source ~/.config/tmux/tmux.conf

echo 'Installing lazygit...'
brew install jesseduffield/lazygit/lazygit

echo 'Installing nim...'
curl https://nim-lang.org/choosenim/init.sh -sSf | sh

echo 'Installing rust...'
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

echo 'Installing Zip, Unzip and sed...'
sudo apt install unzip
sudo apt install zip
sudo apt install sed

echo 'Installing Kotlin...'
sdk install kotlin

echo 'Installing snap...'
sudo apt install snapd
sudo snap install core

echo 'Installing jdk 8, 11, 17 and 21...'
sdk install java 8.0.382-tem
sdk install java 11.0.20.1-tem
sdk install java 17-open
sdk install java 21-open

echo 'Installing C++ compilers...'
sudo apt install g++

echo 'Installing pyenv and latest python version...'
brew install pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >>~/.bashrc
echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >>~/.bashrc
echo 'eval "$(pyenv init -)"' >>~/.bashrc
source ~/.bashrc
pyenv install 3

echo 'Installing nvm and latest node version...'
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion
nvm install stable
nvm use stable

echo 'Installing Angular CLI...'
npm install -g @angular/cli

echo 'Starting snap service...'
sudo systemctl start snapd.service

echo 'Installing Intellij IDEA...'
sudo snap install intellij-idea-community --classic
sudo snap install intellij-idea-ultimate --classic

echo 'Installing Android Studio...'
sudo snap install android-studio --classic

echo 'Installing Sublime text...'
sudo snap install sublime-text --classic

echo 'Installing VS Code...'
sudo apt-get install code -y

echo 'Installing DBeaver CE...'
sudo snap install dbeaver-ce

echo 'Installing draw.io'
sudo snap install drawio

echo 'Installing Postman...'
sudo snap install postman

echo 'Installing PostgreSQL...'
sudo apt -y install postgresql

echo 'Installing Thorium...'
curl -O https://dl.thorium.rocks/debian/dists/stable/thorium.list
sudo mv thorium.list /etc/apt/sources.list.d/
sudo apt update
sudo apt install thorium-browser -y

echo 'Installing vim'
sudo apt install vim

echo 'Installin nvim'
brew install neovim

echo 'Installing my version of LazyVim'
git clone https://github.com/hadestructhor/LazyVim ~/.config/LazyVim

echo 'Installing zsh-syntax-highlighting'
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git

echo 'Installing catpuccin theme for zsh-syntax-highlighting'
git clone https://github.com/catppuccin/zsh-syntax-highlighting.git

echo 'Switching to zsh...'
exec zsh
