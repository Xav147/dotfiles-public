# dotfiles

Public dotfiles for my development setup.

## Contents

- `nvim/.config/nvim` — LazyVim-based Neovim config
  - Omarchy-friendly theme integration
  - transparent UI highlights
  - remote clipboard support for tmux/SSH/herdr via OSC 52
  - Neo-tree enabled through LazyVim extras

## Install

This repo is organized for [GNU Stow](https://www.gnu.org/software/stow/):

```sh
git clone https://github.com/Xav147/dotfiles-public.git ~/Projects/dotfiles-public
cd ~/Projects/dotfiles-public
stow nvim
```

If files already exist, back them up first:

```sh
mv ~/.config/nvim ~/.config/nvim.backup
stow nvim
```

## Notes

`lua/plugins/theme.lua` is intentionally not tracked here because on this machine it is managed by Omarchy as a symlink to the current theme:

```text
~/.local/state/omarchy/current/theme/neovim.lua
```

Without that file, LazyVim still loads normally and falls back to its default theme behavior.
