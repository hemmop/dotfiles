# My personal dotfiles

This repository contain my personal _dotfiles_.

Also notice that the files only support Debian and Ubuntu OSes.

## Installation

```sh
cd
git clone https://github.com/hemmop/dotfiles.git .dotfiles
cd .dotfiles
git submodule init
git submodule update
cd
```

All references below assumes that the repository is cloned in
this _.dotfiles_ directory in the home directory.

## Bash

The bash files are split into three separate files. The _bash_aliases_
file will load the other two (_bash_exports_ and _bash_prompt_).

### Usage

bash_aliases:

```sh
ln -s $HOME/.dotfiles/bash_aliases $HOME/.bash_aliases
```

## Git

This is the central place for mostly aliases I use in everyday tasks.

### Usage

```sh
ln -s $HOME/.dotfiles/gitconfig $HOME/.gitconfig
```

## Vim

My Vim files is pulled from a different repository of mine, i.e.
is a submodule to this repository.

### Usage

```sh
ln -s $HOME/.dotfiles/vim/vimrc $HOME/.vimrc
```


