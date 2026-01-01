ansi_colle.linux
==========

Collection of roles and plugins for personal use.
Target for Fedora and Debian OS, other distros is not supported.

Requirements
------------

1. Execute [bootstrap.bash](bootstrap.bash)
2. Install this collection: `ansible-galaxy collection install community.general`

3. To run this playbook from `bash`:

   ```bash
   export ANSIBLE_CALLBACK_RESULT_FORMAT=yaml  # yaml output format
   export ANSIBLE_VERBOSITY=1  # Set verbosity, default is 0

   ansible-galaxy collection install \
       git+https://github.com/ChunPanYung/ansi_colle-linux.git

   # Run this to update every time
   ansible-playbook ansi_colle.linux.install

   # Run this after update, it will ask you sudo password
   ansible-playbook ansi_colle.linux.site --connection=local \
       --inventory 127.0.0.1, --verbose
    ```

Links
-----

[Documentation Site](https://chunpanyung.github.io/ansi_colle-linux/)
