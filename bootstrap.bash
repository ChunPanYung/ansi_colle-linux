#!/usr/bin/env bash

# Install ansible & Enable ssh on Fedora and Debian based system
function setup-debian {
	export DEBIAN_FRONTEND=noninteractive
	apt install --yes openssh-server ansible-core
	systemctl enable --now ssh
	command -v ufw && ufw allow OpenSSH
}

function setup-fedora {
	dnf install --assumeyes openssh-server ansible-core
	systemctl enable --now sshd
	if command -v firewall-cmd &>/dev/null; then
		firewall-cmd --permanent --add-service=ssh
		firewall-cmd --reload
	fi

	dnf install --assumeyes python3-psutil # for community.general.dconf
}

# Check sudo -- if not sudo, ask user to become sudo
if [[ "$EUID" != 0 ]]; then
	echo "Execute this program with 'sudo'!"
	exit 1
fi

id="$(grep -e '^ID=' /etc/os-release | cut -d '=' -f2 | tr -d '\"')"
id_like="$(grep -e '^ID_LIKE=' /etc/os-release | cut -d '=' -f2 | tr -d '\"')"

# execute following depending on OS
case "${id} ${id_like}" in
*"debian"*)
	echo "Debian"
	setup-debian
	;;
*"fedora"*)
	echo "Fedora"
	setup-fedora
	;;
esac
