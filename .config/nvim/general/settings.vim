set encoding=utf-8
set fileencoding=utf-8

" line numbers
set number
set relativenumber

" mouse support
set mouse=a

set pumheight=10
set hidden

" correct splits
set splitbelow
set splitright

" better search
set ignorecase
set incsearch

" theme
syntax enable
colorscheme monokai
set background=dark
set termguicolors
let g:monokai_term_italic = 1
let g:monokai_gui_italic = 1

" intendation
set tabstop=4
set shiftwidth=4
set smarttab
set smartindent
set autoindent

set laststatus=0

set conceallevel=0

set noshowmode
set nobackup
set nowritebackup
set updatetime=300
set timeoutlen=500

set iskeyword+=-
set formatoptions-=cro

" global copy and paste buffer
set clipboard=unnamedplus

let g:mapleader = "\<Space>"

" vimtex settings
let g:tex_flavor = 'latex'
let g:vimtex_view_method = 'zathura'

" force write
cmap w!! w !sudo tee %
