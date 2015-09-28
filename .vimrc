set shell=zsh               " set shell to bash, in case of some shell (like 
                            " fish) will fail to source .vimrc

" Vundle, Plugin manager for Vim (https://github.com/gmarik/Vundle.vim)
" Vundle BEGIN---
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'tomasr/molokai'

Plugin 'scrooloose/syntastic'

call vundle#end()
" Vundle END---

" plugins
filetype on
filetype plugin on          " enable plugins like PEP8 for python
filetype plugin indent on   " enable indent configuration

" basics
syntax on

let g:molokai_original = 1
let g:rehash256 = 1
set t_Co=256
colorscheme molokai
set background=dark

" expand tab character to spaces
set expandtab

" tab width
set softtabstop=4
set shiftwidth=4

" view peripherals
set number
set relativenumber          " relative line number
set ruler                   " little ruler 
set hlsearch                " highlight search result
set cursorline              " highlight cursor line
set cursorcolumn	    " highlight cursor column

"highlight overlength ctermbg=red ctermfg=white guibg=#592929
"match overlength /\%81v.\+/

" operation
set mouse=c                 " mouse=c to make copy operation easier

set clipboard=unnamed       " synchronize system clipboard and Vim's unnamed register 

" Pathogen, Manage your runtime path (https://github.com/tpope/vim-pathogen)
" execute pathogen#infect()

" Tagbar, Browsing tags in source code (https://github.com/majutsushi/tagbar)
nmap <F8> :TagbarToggle<CR>

" Ctags, Tags! (brew install ctags)
set tags=./tags,tags,.git/tags;

" Syntastic, Auto syntax checking (https://github.com/scrooloose/syntastic)
" let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_checkers = ['jshint']    " npm install jshint
let g:syntastic_python_checkers = ['pep8']          " brew install pep8
"let g:syntastic_cpp_compiler_options = '-std=c++11' " c++11 compiler options
