filetype off
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle')
Plugin 'VundleVim/Vundle.vim'
Plugin 'crusoexia/vim-monokai'
Plugin 'dense-analysis/ale'
Plugin 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
Plugin 'justinmk/vim-sneak'
Plugin 'jiangmiao/auto-pairs'
Plugin 'ap/vim-css-color'
Plugin 'lervag/vimtex'
call vundle#end()
filetype plugin on

" deoplete
let g:deoplete#enable_at_startup = 1

" sneak
let g:sneak#label = 1

" vimtex
let g:tex_flavor = 'latex'
let g:vimtex_view_method = 'zathura'
autocmd Filetype tex setl updatetime=1

" theme
syntax enable
colorscheme monokai
set termguicolors
set background=dark
let g:monokai_term_italic = 1
let g:monokai_gui_italic = 1
