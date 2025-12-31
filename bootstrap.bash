#!/usr/bin/env bash

# Install ansible & Enable ssh on RedHat and Debian based system
function setup-debian {
	export DEBIAN_FRONTEND=noninteractive
	apt install --yes openssh-server
	systemctl enable --now ssh
	command -v ufw && ufw allow OpenSSH

	apt install --yes ansible-core
}

function setup-redhat {
	dnf install --assumeyes openssh-server
	systemctl enable --now sshd
	if command -v firewall-cmd &>/dev/null; then
		firewall-cmd --permanent --add-service=ssh
		firewall-cmd --reload
	fi

	dnf install --assumeyes python3-psutil # for community.general.dconf
	dnf install --assumeyes ansible-core
}

# Check sudo -- if not sudo, ask user to become sudo
if [[ "$EUID" != 0 ]]; then
	echo "Execute this program with 'sudo'!"
	exit 1
fi

os_name="$(grep -e '^NAME=' /etc/os-release | cut -d '=' -f2 | tr -d '\"')"
# execute following depending on OS
case "${os_name,,}" in
*"debian"*)
	echo "Debian"
	setup-debian
	;;
*"fedora"* | *"almalinux"* | *"red hat"* | *"rockylinux"*)
	echo "RedHat family OS"
	setup-redhat
	;;
esac

# Install ansible collection
ansible-galaxy collection install --upgrade community.general
