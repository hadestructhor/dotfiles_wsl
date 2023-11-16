#!/bin/bash

apt_apps=('build-essential' 'curl')

ask_yn_question() {
	result=false
	while true; do
		read -p "Do you want to $1? (y/n)" yn
		case "$yn" in
		[Yy]*)
			result=true
			break
			;;
		[Nn]*)
			result=false
			break
			;;
		*) echo "Please answer yes or no." ;;
		esac
	done
	$result
}

if $(ask_yn_question "install all at once"); then
	echo "Installing all"
else
	echo "Picking"
fi

download_apt_apps() {
	list=("$@")
	i=0

	while [[ i -lt ${#list[@]} ]]; do
		if $(ask_yn_question "install ${list[$i]}"); then
			echo "Installed ${list[$i]}"
		fi
		i=$((i + 1))
	done
}

download_apt_apps "${apt_apps[@]}"

# /bin/zsh <<'EOF'

gen_ssh() {
	echo 'You selected yes'
}

ask_gen_ssh() {
	read "yn?Do you want to generate an ssh keypair using ed25519 (y/n)?"
	case "$yn" in
	[Yy]*)
		gen_ssh
		break
		;;
	[Nn]*) break ;;
	*) echo "Please answer yes or no." ;;
	esac
}

apt_install() {
	echo "Installing $1..."
	sudo apt install $1 $2
}

aptg_install() {
	echo "Installing $1..."
	sudo apt-get install $1 $2
}

snap_install() {
	echo "Installing $1..."
	sudo snap install $1 $2
}

snap_install_classic() {
	echo "Installing $1"
	sudo snap install $1 $2
}

# EOF
