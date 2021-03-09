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

" latex
Plugin 'lervag/vimtex'
Plugin 'KeitaNakamura/tex-conceal.vim'

" coloring colors
Plugin 'ap/vim-css-color'

" theme
Plugin 'crusoexia/vim-monokai'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()

" plugin settings
let g:tex_flavor = 'latex'
let g:vimtex_view_method = 'zathura'
let g:tex_conceal = 'abdmg'
autocmd BufNewFile,BufRead * highlight clear Conceal
