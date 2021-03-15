" plugins
if empty(glob('~/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload')

" language support
Plug 'sheerun/vim-polyglot'

" linting
Plug 'dense-analysis/ale'
Plug 'jackguo380/vim-lsp-cxx-highlight'

" completion and snippets
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" automatic pairs
Plug 'jiangmiao/auto-pairs'

" comment out lines
Plug 'tpope/vim-commentary'

" vimtex
Plug 'lervag/vimtex'
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'

" colors
Plug 'norcalli/nvim-colorizer.lua'

Plug 'ap/vim-css-color'

" theme
Plug 'morhetz/gruvbox'

" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_theme='gruvbox'
let g:airline#extensions#tabline#enabled = 1

call plug#end()
