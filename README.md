ansi_colle.linux
==========

Collection of roles and plugins for personal use.
Mainly for setting up Linux OS.

Requirements
------------

[Installing Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)

To run this playbook from `bash`:

```bash
export ANSIBLE_STDOUT_CALLBACK=yaml
export ANSIBLE_LOAD_CALLBACK_PLUGINS=True

ansible-galaxy collection install \
  git+https://github.com/ChunPanYung/ansi_colle-linux.git

# Run this to update every time
ansible-playbook ansi_colle.linux.install

# Run this after update, it will ask you sudo password
ansible-playbook ansi_colle.linux.site --connection=local \
  --inventory 127.0.0.1, --ask-become-pass --verbose
```

## Links

[Documentation Site](https://chunpanyung.github.io/ansi_colle-linux/)
