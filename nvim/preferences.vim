syntax on
filetype plugin on
filetype indent on

set t_Co=256
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set nocompatible
set encoding=utf-8

set modelines=0
set nomodeline

set number

" enable mouse integration
set mouse=
map <Leader>m :set mouse=a<CR>
map <Leader>M :set mouse=<CR>
" press shift to temporarily disable the mouse

" MaximizerToggle
map <Leader>z :MaximizerToggle<CR>

let mapleader=","

" nvim specific
tnoremap <Esc> <C-\><C-n>
tnoremap <C-v><Esc> <Esc>

" use per directory .vimrc files
set exrc
" mitigate at least some of the possible security issues that arise from 'set exrc'
set secure

" Use all the memory needed, for maximum performance.
set maxmempattern=2000000

