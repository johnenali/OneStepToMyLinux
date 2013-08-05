set nu
set hlsearch incsearch
"====Program
set tabstop=4
set shiftwidth=4
set smarttab expandtab
set softtabstop=4
set autoindent
syntax on
"====vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'tpope/vim-rails'
Bundle 'FuzzyFinder'
Bundle 'L9'
Bundle 'SuperTab-continued.'
Bundle 'vimwiki'
Bundle 'c.vim'
Bundle 'bash-support.vim'
Bundle 'taglist.vim'

filetype plugin indent on
