
" fix tab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set autoindent
set expandtab

" fix copy
set clipboard=unnamedplus

" IDE-like options
syntax on
set mouse=a                 " enable mouse click
set fileformat=unix
set encoding=utf-8
set number relativenumber
set spelllang=en_us
set showmatch
highlight Comment cterm=italic
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
set cc=80                   " set an 80 column border for good coding style

" ctrl + n = autocomplete
set wildmode=longest,list,full

" rm trailing whitespaces on save
autocmd BufWritePre * :%s/\s\+$//e

" misc
set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching
set ignorecase              " case insensitive
set mouse=v                 " middle-click paste with
set hlsearch                " highlight search
set incsearch               " incremental search
filetype plugin indent on   "allow auto-indenting depending on file type
filetype plugin on


call plug#begin()
Plug 'https://github.com/vim-airline/vim-airline-themes'
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
call plug#end()


" --- Just Some Notes ---
" :PlugClean :PlugInstall :UpdateRemotePlugins


" airline
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
    endif

    " airline symbols
"    let g:airline_left_sep = ''
"    let g:airline_left_alt_sep = ''
"    let g:airline_right_sep = ''
"    let g:airline_right_alt_sep = ''
    let g:airline_symbols.branch = ''
    let g:airline_symbols.readonly = ''

