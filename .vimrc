set shell=bash              " set shell to bash, in case of some shell (like
                            " fish) will fail to source .vimrc

" =========================== Vundle ===========================
" Vundle, Plugin manager for Vim (https://github.com/gmarik/Vundle.vim)
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'          " Vim Package Manager

Plugin 'scrooloose/nerdtree'        " Tree Explorer

Plugin 'tomasr/molokai'

Plugin 'scrooloose/syntastic'

Plugin 'kchmck/vim-coffee-script'

call vundle#end()
" Vundle END---

" =========================== Vim Basic Config ===========================
filetype on
filetype plugin on          " enable plugins like PEP8 for python
filetype plugin indent on   " enable indent configuration

" basics
syntax on

set fileformats+=dos

" tab
set expandtab               " expand tab character to spaces
set softtabstop=4
set shiftwidth=4

" view peripherals
set number
set relativenumber          " relative line number
set ruler                   " little ruler 
set hlsearch                " highlight search result
set cursorline              " highlight cursor line
set cursorcolumn	    " highlight cursor column

" operation
set mouse=c                 " mouse=c to make copy operation easier
set clipboard=unnamed       " synchronize system clipboard and Vim's unnamed register 

" =========================== Vim Plugins ===========================

let g:molokai_original = 1
let g:rehash256 = 1
colorscheme molokai

" Syntastic, Auto syntax checking (https://github.com/scrooloose/syntastic)
" let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_checkers = ['jshint']    " npm install jshint
let g:syntastic_python_checkers = ['pep8']          " brew install pep8
"let g:syntastic_python_pep8_args = '--max-line-length=120'
"let g:syntastic_cpp_compiler_options = '-std=c++11' " c++11 compiler options
