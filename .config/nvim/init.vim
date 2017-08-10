set mouse=""

set tabstop=2
set softtabstop=2
set expandtab
set shiftwidth=2

let g:mapleader=','
set number

set encoding=utf-8
set hlsearch
set incsearch

set ignorecase
set smartcase

map <CR> :nohl<cr>
tnoremap <Esc> <C-\><C-n>
"set cursorline
"set cursorcolumn

set title

call plug#begin('~/.config/nvim/plugged')
Plug 'Shougo/deoplete.nvim', { 'do': 'UpdateRemotePlugins' }
   let g:deoplete#enable_at_startup = 1
   " use tab for completion
   inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

Plug 'sheerun/vim-polyglot'

Plug 'tomasr/molokai'


Plug 'neomake/neomake'
  augroup localneomake
    autocmd! BufWritePost * Neomake
  augroup END
  let g:neomake_markdown_enabled_markers = []

Plug 'c-brenn/phoenix.vim'
Plug 'tpope/vim-projectionist'
Plug 'slashmili/alchemist.vim'
Plug 'powerman/vim-plugin-AnsiEsc'

call plug#end()

set background=dark
syntax enable
colorscheme molokai

