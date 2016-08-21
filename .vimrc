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
Plugin 'bling/vim-airline'          " Status line
Plugin 'majutsushi/tagbar'          " Tag bar

Plugin 'tpope/vim-fugitive'         " Git wrapper
Plugin 'airblade/vim-gitgutter'     " Git diffs

" Color themes
Plugin 'tomasr/molokai'
Plugin 'altercation/vim-colors-solarized'

Plugin 'scrooloose/syntastic'       " Syntax checker
" Plugin 'valloric/youcompleteme'     " Code Completion
Plugin 'pangloss/vim-javascript'    " JavaScript Language
Plugin 'kchmck/vim-coffee-script'   " Coffee Language

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

" Map Ctrl+N to NERDTreeToggle
map <C-n> :NERDTreeToggle<CR>

" Map F8 to Tagbar
nmap <F8> :TagbarToggle<CR>

set background=dark
" let g:molokai_original = 1
" let g:rehash256 = 1
" colorscheme molokai
let g:solarized_termcolors=256
colorscheme solarized

" Syntastic, Auto syntax checking (https://github.com/scrooloose/syntastic)
" let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_checkers = ['jshint']    " npm install jshint
let g:syntastic_python_checkers = ['pep8']          " brew install pep8
"let g:syntastic_python_pep8_args = '--max-line-length=120'
"let g:syntastic_cpp_compiler_options = '-std=c++11' " c++11 compiler options
