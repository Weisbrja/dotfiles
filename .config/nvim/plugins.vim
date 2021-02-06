" plugins
set rtp+=~/.config/nvim/bundle/Vundle.vim

call vundle#begin('~/.config/nvim/bundle')

Plugin 'VundleVim/Vundle.vim'

Plugin 'sheerun/vim-polyglot'
Plugin 'dense-analysis/ale'
Plugin 'jiangmiao/auto-pairs'

Plugin 'ervandew/supertab'

Plugin 'lervag/vimtex'

Plugin 'ap/vim-css-color'

Plugin 'crusoexia/vim-monokai'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()

" vimtex
let g:vimtex_view_method = 'zathura'

" theme
colorscheme monokai
set termguicolors
set background=dark
let g:monokai_term_italic = 1
let g:monokai_gui_italic = 1

" airline
let g:airline_theme = 'minimalist'
let g:airline#extensions#tabline#enabled = 1
