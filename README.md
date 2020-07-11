# vim

config & plugins for vim


## Getting started

### Use the latest vim

The clipboard and some plugins doesn't work well with the default vim compiled by Apple.

```
brew install vim
```

Change the alias of `vi` in `.bashrc`

```
alias vi='/usr/local/bin/vim'
```

### Change the `.vimrc` file

1. You might want to backup your current `.vimrc`. `mv ~/.vimrc ~/.vimrc_backup`

2. Create a symlink `ln -s .vimrc ~/.vimrc`


## Other dependecies

### Typescript
```
npm install typescript -g
```

### fzf
Install [rg](https://github.com/BurntSushi/ripgrep)
