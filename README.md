# kuin-syntax-vim 自分用のKuin・シンタックスハイライト・プラグイン
## Description
Syntax highlight plugin for [Kuin language](https://kuina.ch/kuin).
## Usage
1. Make sure that you have a directory `~/.vim/syntax`.
2. Execute the commands below in order that Vim can read the file.
```bash
$ git clone git@github.com/vm-xeck/kuin-syntax-vim
$ cd kuin-syntax-vim
$ make
```
3. Type `:set syntax=kuin` in Vim or Add `au BufRead,BufNewFile *.kn set filetype=kuin` to your vimrc.
