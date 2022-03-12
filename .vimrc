"        _
" __   _(_)_ __ ___  _ __ ___
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__
" (_)_/ |_|_| |_| |_|_|  \___|
"  by Hanzenn.

" fix tab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix

" fix copy
set clipboard+=unnamedplus

" IDE-like options
syntax on
set encoding=utf-8
set number relativenumber
set spelllang=en_us
set showmatch
highlight Comment cterm=italic


" ctrl + n = autocomplete
set wildmode=longest,list,full

" rm trailing whitespaces on save
autocmd BufWritePre * :%s/\s\+$//e
