## Cursor Cloud specific instructions

This repository contains a single bash shell script (`ubuntu.sh`) that provisions an Ubuntu development environment. There is no build system, no test framework, and no application server.

### Linting

- **shellcheck**: Lint with `shellcheck ubuntu.sh`. Installed via `sudo apt-get install -y shellcheck`.
- **Syntax check**: Verify syntax with `bash -n ubuntu.sh`.

### Running the script

The script is designed to be run once on a fresh Ubuntu system with `sudo bash ubuntu.sh`. It installs system packages (python3-dev, pip, tree, unzip, docker), configures git aliases, and installs pip packages (httpie, thefuck, jupyter, docker-compose). Some steps are interactive (Oh My Zsh, SpaceVim) and require manual confirmation.

### Testing approach

Since there is no automated test suite, validate changes by:
1. Running `bash -n ubuntu.sh` for syntax correctness.
2. Running `shellcheck ubuntu.sh` for lint warnings.
3. Executing individual commands from the script in isolation to verify they work.

### Gotchas

- The Oh My Zsh install line (`sh -c "$(curl ...)"`) is interactive and will change the user's shell to zsh mid-execution. In a CI or cloud agent context, this can hang.
- The SpaceVim install (`curl ... | bash`) can also be interactive.
- The Docker/Portainer section requires the Docker daemon to be running.
- `pip3 install` commands may install to `~/.local/bin`, which may not be on `PATH` by default.
