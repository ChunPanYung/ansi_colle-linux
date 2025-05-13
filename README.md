ansi_colle
==========

Collection of roles and plugins for personal use.
There is multiple ways to use this repo.

This collections assume user configure/connect to remote Windows host using SSH.
For more information how to setup, Execute/look at `Setup-SSH.ps1` in this directory.

Requirements
------------

[Installing Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)

To instal and run this playbook:

```bash
url="git+https://github.com/ChunPanYung/ansi_colle-linux.git"
ansible-galaxy collection install "$url"

# Run this to update everytime
ansible-playbook ansi_colle.linux.install

# Run this after update, it will ask you sudo password
ansible-playbook ansi_colle.linux.site --connection=local \
  --inventory 127.0.0.1, --ask-become-pass
```
