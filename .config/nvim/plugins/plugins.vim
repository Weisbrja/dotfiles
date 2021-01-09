" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
	\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/autoload/plugged')
	Plug 'crusoexia/vim-monokai'
	Plug 'dense-analysis/ale'
	Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
	Plug 'jiangmiao/auto-pairs'
	Plug 'ap/vim-css-color'
	Plug 'lervag/vimtex'
call plug#end()

let g:deoplete#enable_at_startup = 1

" vimtex settings
let g:tex_flavor = 'latex'
let g:vimtex_view_method = 'zathura'

" theme
colorscheme monokai
set background=dark
let g:monokai_term_italic = 1
let g:monokai_gui_italic = 1
