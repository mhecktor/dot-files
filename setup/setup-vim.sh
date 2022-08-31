#! /bin/sh

if [[ ! -d ~/.vim ]] || [[ ! -d ~/.vim/bundle ]] ||  [[ ! -f ~/.vim/bundle/Vundle.vim ]]
then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    oldViConfig=$(cat ~/.vimrc)
    echo "set nocompatible\nfiletype off\nset rtp+=~/.vim/bundle/Vundle.vim\ncall vundle#begin()\nPlugin 'VundleVim/Vundle.vim'\ncall vundle#end()\nfiletype plugin indent on\n$oldViConfig" > ~/.vimrc
fi