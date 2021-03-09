" plugins
set runtimepath+=~/.config/nvim/bundle/Vundle.vim

call vundle#begin('~/.config/nvim/bundle')
Plugin 'VundleVim/Vundle.vim'

" language support
Plugin 'sheerun/vim-polyglot'

" linting
Plugin 'dense-analysis/ale'
Plugin 'jackguo380/vim-lsp-cxx-highlight'

" completion
Plugin 'neoclide/coc.nvim', {'branch': 'release'}

" vimtex
Plugin 'lervag/vimtex'
let g:tex_flavor = 'latex'
let g:vimtex_view_method = 'zathura'

" coloring colors
Plugin 'ap/vim-css-color'

" git
Plugin 'airblade/vim-gitgutter'

" theme
Plugin 'crusoexia/vim-monokai'
Plugin 'morhetz/gruvbox'

" airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline_theme = 'gruvbox'
let g:airline#extensions#tabline#enabled = 1

call vundle#end()
