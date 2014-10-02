set shell=bash              " set shell to bash, in case of some shell (like fish) will fail
                            " to source .vimrc

set t_Co=256
syntax on
colorscheme default

" expand tab character to spaces
set expandtab

" tab width
set softtabstop=4           " tab size = 4
set shiftwidth=4

" view peripherals
set number                  " line number
set ruler                   " little ruler 
set hlsearch                " highlight search result
set cursorline              " highlight cursor line

" operation
set mouse=c                 " mouse=c to make copy operation easier

" plugins
filetype plugin on          " enable plugins like PEP8 for python
filetype plugin indent on   " enable indent configuration

" Pathogen: Manage your runtime path (https://github.com/tpope/vim-pathogen)
execute pathogen#infect()
" Tagbar: Browsing tags in source code (https://github.com/majutsushi/tagbar)
nmap <F8> :TagbarToggle<CR>
" Ctags: Tags! (brew install ctags)
set tags=./tags,tags,.git/tags;
" Syntastic: Auto syntax checking (https://github.com/scrooloose/syntastic)
" let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_checkers = ['jshint']    " npm install jshint
let g:syntastic_python_checkers = ['pep8']          " brew install pep8
let g:syntastic_cpp_compiler_options = '-std=c++11' " c++11 compiler options
