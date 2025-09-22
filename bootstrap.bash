#!/usr/bin/env bash

# Install ansible & Enable ssh on RedHat and Debian based system
function debian {
	export DEBIAN_FRONTEND=noninteractive
	apt install --yes openssh-server ansible
	systemctl enable --now ssh
	command -v ufw && ufw allow ssh
}

function redhat {
	dnf install --assumeyes openssh-server ansible
	systemctl enable --now sshd
	if command -v firewall-cmd &>/dev/null; then
		firewall-cmd --permanent --add-service=ssh
		firewall-cmd --reload
	fi
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
	debian
	;;
*"fedora"*)
	echo "Fedora"
	redhat
	;;
esac
