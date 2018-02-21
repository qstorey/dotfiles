# dotfiles

### A little place called home for my dotfiles.

This is a personal collection of dotfiles that is inspired by Zach Holman's
[dotfiles](https://github.com/holman/dotfiles) and thoughtbot's [dotfiles](https://github.com/thoughtbot/dotfiles).

Dotfiles should be available for people to view, get ideas from and share.
Zach Holman wrote a nice
[post](https://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/) on this
topic. At the same time, dotfiles can contain personalised or private settings
that make forking a dotfiles repo a little trickier.

For that reason my dotfiles are broken up into two repos:
- dotfiles
> this repo

- dotfiles-private
> pesonalised or private includes like your git emaill address
  or some server's IP address in your ssh config

### Requirements

- tmux (version >= 1.7)
- [oh-my-zsh](http://ohmyz.sh)

### Download

```sh
git clone git@github.com:qstorey/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
git submodule update --init --recursive
```

### Install

Symlink the components you want into your home directory.

git
```sh
ln -s ~/.dotfiles/git/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/git/.gitignore_global ~/.gitignore_global
```

neovim
```sh
ln -s ~/.dotfiles/nvim ~/.config
```

tmux
```sh
ln -s ~/.dotfiles/tmux/.tmux.conf ~/.tmux.conf
```

vim
```sh
ln -s ~/.dotfiles/vim/.vimrc ~/.vimrc
ln -s ~/.dotfiles/vim/.vim ~/.vim
```

zsh
```sh
ln -s ~/.dotfiles/zsh/.zshrc ~/.zshrc
```
