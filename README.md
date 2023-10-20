# dotfiles_wsl
Dot files and install scripts for my own dev environment configuration of WSL2

## How to install everything

To install everything you first need to update your debian distro as follows:
```sh
sudo apt update
```

Then you have to ensure you have git installed:
```sh
sudo apt install git
```

Once git is installed, clone the repository via this command:
```sh
git clone https://github.com/hadestructhor/dotfiles_wsl.git
```

Once that is done, you need to make the `install_dev_env.sh` command executable via this command:
```sh
sudo chmod +x install_dev_env.sh
```

Then all you need to do is run:
```sh
./install_dev_env.sh
```
