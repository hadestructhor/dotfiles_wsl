# dotfiles_wsl
Dot files and install scripts for my own dev environment configuration of WSL2

## Prerequisites

A Debian wsl2 distro must be installed.

You can follow this [guide](https://learn.microsoft.com/en-us/windows/wsl/install) to enable wsl.

Once enabled, install Debian with the following command:
```sh
wsl --install Debian
```

Then upgrade the version of Debian to wsl2:
```sh
wsl --set-version Debian 2
```

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

Once the repo clone, cd into `dotfiles_wsl`.

Once that is done, you need to make the `install_dev_env.sh` command executable via this command:
```sh
sudo chmod +x install_dev_env.sh
```

Then all you need to do is run:
```sh
./install_dev_env.sh
```
