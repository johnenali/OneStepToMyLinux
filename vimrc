set nu
set hlsearch incsearch
"set colorcolumn=80
"====Program
set tabstop=4
set shiftwidth=4
set smarttab expandtab
set softtabstop=4
set autoindent smartindent
syntax on
"====
let mapleader=","
function! SwitchToBuf(filename)
    let bufwinnr=bufwinnr(a:filename)
    if bufwinnr!=-1
        exec bufwinnr . "wincmd w"
        return
    else
        tabfirst
        let tab=1
        while tab <= tabpagenr("$")
            let bufwinnr=bufwinnr(a:filename)
            if bufwinnr!=-1
                exec "normal" . tab . "gt"
                exec bufwinnr . "wincmd w"
                return
            endif
            tabnext
            let tab=tab+1
        endwhile
        exec "tabnew " . a:filename
    endif
endfunction

map <silent> <leader>ss :source ~/.vimrc<cr>
map <silent> <leader>ee :call SwitchToBuf("~/.vimrc")<cr>
autocmd! bufwritepost .vimrc source ~/.vimrc
"=====Ruby
let g:rsenseHome = "/home/enali/opt/rsense-0.3"
"let g:rsenseUseOmniFunc = 1
"====vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'tpope/vim-rails'
Bundle 'FredKSchott/CoVim'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'scrooloose/nerdtree'

Bundle 'FuzzyFinder'
Bundle 'L9'
Bundle 'SuperTab-continued.'

Bundle 'vimwiki'
Bundle 'c.vim'
Bundle 'bash-support.vim'
Bundle 'taglist.vim'
Bundle 'bundler.vim'
Bundle 'minibufexpl.vim'
Bundle 'dbext.vim'
Bundle 'surround.vim'
Bundle 'abolish.vim'
Bundle 'javacomplete'
Bundle 'snipMate'
filetype plugin indent on
"=====Map
nmap <silent> <C-t> :NERDTree<CR>
