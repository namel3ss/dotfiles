# My dotfiles
This repository contains the configuration for the tools that I use on a daily basis for work, hobbies, fooling around.

# Setup
I manage my dotfiles with `stow`. To use it you can install it via Homebrew or whatever other package manager:
```
brew install stow
```
More info here https://www.gnu.org/software/stow/

To setup the dotfiles, use:
```
cd dotfiles
stow .
```
The dotfiles will be linked under `~/` following the same structure in the repo.

Restart you terminal and enjoy using them.
