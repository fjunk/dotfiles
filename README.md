# Dotfiles

Collection of dotfiles managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Usage

Each top-level directory (`zsh/`, `nvim/`, `kitty/`, …) is a stow package. Files inside are symlinked into `$HOME` relative to the package root.

```bash
# Symlink a single package (e.g. zsh)
stow zsh

# Symlink everything
stow */

# Remove symlinks for a package
stow -D zsh
```

The `dot-` prefix convention is used for dotfiles — stow translates `dot-` to `.` when creating symlinks (requires stow ≥ 2.4 or the `--dotfiles` flag):

```bash
stow --dotfiles zsh
# zsh/dot-zshrc  →  ~/.zshrc
# zsh/dot-zshrc-shared.d/  →  ~/.zshrc-shared.d/
```

## Homebrew

All Homebrew packages (formulae, casks, taps) are declared in `brew/Brewfile`.

```bash
# Install everything from the Brewfile
brew bundle --file=~/dotfiles/brew/Brewfile

# Update Brewfile after installing new packages
brew bundle dump --file=~/dotfiles/brew/Brewfile --force

# Remove packages not listed in the Brewfile
brew bundle cleanup --file=~/dotfiles/brew/Brewfile --force
```

## Local (machine-specific) zsh config

The zsh setup sources two directories:

| Directory | Purpose |
|---|---|
| `~/.zshrc-shared.d/*.zsh` | Shared config managed by this repo (via `stow zsh`) |
| `~/.zshrc.d/*.zsh` | **Local, machine-specific** config — not tracked in git |

To add local overrides or secrets, create files directly in `~/.zshrc.d/`:

```bash
mkdir -p ~/.zshrc.d
echo 'export MY_SECRET="xxx"' > ~/.zshrc.d/secrets.zsh
```

Any `*.zsh` file placed there will be sourced automatically after the shared config.
