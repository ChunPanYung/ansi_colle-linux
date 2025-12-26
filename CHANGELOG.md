# Changelog

All notable changes to this project will be documented in this file.

## [2.3.0] - 2025-12-25

### 🚀 Features

- Install lazyvim (#52)
- `gnome` role (#53)
- [**breaking**] Remove `wsl` role
- `kde` role

### 🐛 Bug Fixes

- Update `pnpm` role for more idempotency and flexible install. (#51)

## [2.2.0] - 2025-09-29

### 🚀 Features

- Update to use uv.
- Update version when updating changelog.
- Specify shell script using tab indentation.
- [**breaking**] Remove editorconfig file.
- [**breaking**] Refactor packges into its own file, install espanso for fedora.
- Install both lsd and bat.
- Install required collection.
- [**breaking**] Remove unused file.
- [**breaking**] Remove fish role.
- [**breaking**] Remove deprecated role.
- Bootstrap file.

### 🐛 Bug Fixes

- Install first before building.
- Task name.
- Regex error on `pnpm` role.
- Missing field on `pnpm` role.

### 🚜 Refactor

- Simplify task file.

### 📚 Documentation

- Change platform to `debian`.
- Ignore `uv.lock`, use pre-commit.
- `antsibull-docs` dependencies.
- Add `validate-pyproject` to `pyproject.toml`.

### 🎨 Styling

- No longer need nvim config as it now properly see ansible file.
- Rename task.
- Task name.

## [2.1.0] - 2025-06-08

### 🚀 Features

- Setup wezterm.
- Create new role `fish`.
- Setup podman socket systemd. (#40)
- *(pr)* Create file if not exist, setup file permission and backup copy for `lineinfile` module.
- Setup `DOCKER_HOST` var.
- [**breaking**] Fix pkg name and install go-task.
- Setup completion for task.
- [**breaking**] Rename role, from `npm` to `pnpm`.
- Update key and value in `ansible.cfg`.

### 🐛 Bug Fixes

- Add `neovim` role to playbook.

### 🚜 Refactor

- Reduce `pnpm` role code complexity.

### 📚 Documentation

- Change yaml file name and update documentation.
- Create issue template. (#39)

### 🎨 Styling

- *(pr)* Change format according to linter. (#42)
- Change variable name.

### 🧪 Testing

- Change variable name in `task` command.

## [2.0.0] - 2025-05-15

### Bug Fixes

- Become true when config ansible. (#37)
- Missing path appending.
- Cmd name and variable.

### Features

- Install fish and setup wezterm. (#34)
- Install python uv.
- Install cargo only, no rustc.
- Setup gpg configuration.
- Install and configure wezterm.
- Install golang.
- Additional flatpak.
- Setup editorconfig file.
- [**breaking**] Remove unused roles and dependencies.
- Use go-task.
- Editorconfig file.
- [**breaking**] No longer use pdm for this project.

### Refactor

- [**breaking**] Change role name.
- [**breaking**] Refactor multiple roles into few.

### Revert

- Remove .ansible dir. (#33)

## [1.4.3] - 2025-05-12

### Documentation

- Update project metadata.

### Features

- [**breaking**] Remove vscode installation and setup.
- [**breaking**] Remove web dev linter.
- [**breaking**] Remove dotnet and inventory config for ansible.
- [**breaking**] Remove ruby install.
- [**breaking**] Remove linting and lsp for ansible.
- [**breaking**] Remove powershell.
- [**breaking**] Delete golang.
- [**breaking**] Remove python role.
- [**breaking**] Remove unused directory.
- [**breaking**] Remove pdm requirement.

### Refactor

- [**breaking**] Migrate task into dev_tools, remove unused tasks.
- [**breaking**] Migrate neovim into its own role.
- [**breaking**] Install npm only for redhat, alpine and debian os.
- Install for alpine, debian and fedora os.
- Use dnf module since it is for dnf based os.
- [**breaking**] Migrate cargo to its own role.
- [**breaking**] Migrate systemd config to its own role.
- Only install git.

## [1.4.2] - 2024-10-04

### Features

- Additional attribute and reorder gitconfig file.

## [1.4.1] - 2024-07-25

### Documentation

- Update version, add new script.
- Use different alias for executing playbook.

### Features

- Install lua and luarocks. (#27)
- Add arkade bin directory to PATH.
- [**breaking**] Get version from scm.
- Install git-lfs
- Install lua and luarocks.

## [1.4.0] - 2024-07-16

### Bug Fixes

- Variable name.
- Safe injection, specify which credential to use.
- Ping playbook from different collection.
- Specify branch to install.

### Refactor

- Run on all hosts by default, use inventory for filtering.
- Default to ping choice parameter.
- Change variable name.
- Setting environment variable to local stage scope.

### Features

- Options, parameters, and playbook plugins.
- Local installation of ansible playbook.
- Configure ansible with environment variables.
- [**breaking**] Use ansiblePlaybook isntead of adhoc.
- Git tag must be signed.
- Do not allow pushing if default branch is main or master.
- Install and check output based on verbosity.
- New role to install and download arkade.

## [1.3.0] - 2024-05-03

### Features

- Jenkinsfile to test ansible connection.
- Enable and start sshd service.

## [1.2.0] - 2024-04-25

### Features

- Initial role to setup and configure ergo.
- Add ergo role to playbook.
- [**breaking**] Remove deprecated role.

## [1.1.2] - 2024-03-22

### Features

- Add powershell to wsl playbook. (#16)
- Add GitHub Action to validate code and format.

### Refactor

- Use module `blockinfile` isntead of `copy`.
- Remove files, directly put file contents into task file.

### Styling

- Append and prepend newline.

## [1.1.1] - 2024-03-15

### Bug Fixes

- 9th option instead of 8 when downloading binary from github.
- Ensure gpg.conf file exists.
- Variable name in `group_vars`.
- Install `pinentry-tty` instead.

### Features

- Add powershell to wsl playbook. (#16)
- Add script to append commits to changelog.
- Use module to compare package version.
- Specify require variable for role `dev_tools`.

### Refactor

- Remove temp directory after downloaded and installed the zip file content.

## [1.1.0] - 2024-03-11

### Bug Fixes

- Privilege on task.
- Ansible-lint error.
- Looping to setup ini file.

### Features

- New role for installing kuro via github and rpm. (#8)
- Setup and configure gpg-agent.
- Setup group variables.
- [**breaking**] Use `pdm` instead of `poetry`. (#12)
- [**breaking**] Migrate go installation to new role. (#13)
- [**breaking**] Remove unused variable.
- Add script to repo.
- Setup ansible configuration for user.
- [**breaking**] Remove ansible.cfg file from repo.
- Execute gpg to setup alias and enable agent on startup.

### Refactor

- Move tasks into `_gpg.yml` file.
- Remove warning causes by shellcheck.

### Testing

- Add and setup testinfra example. (#9)

## [1.0.0] - 2023-12-11

### Bug Fixes

- Output version '0.0.0' if no pwsh is installed. (#6)

### Documentation

- Change to git message changelog.
- [**breaking**] Replace `antsibull-changelog` with `git-cliff`.

### Features

- [**breaking**] Remove pyenv.
- Install pipx via pip.
- [**breaking**] Do not install pipx via dnf.

<!-- generated by git-cliff -->
