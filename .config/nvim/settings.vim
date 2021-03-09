" mouse support
set mouse=a

" set completion menu height
set pumheight=10

" hide buffers
set hidden

" disable wrapping a line in the middle of a word
set linebreak

" spell checking
set spelllang=en,de
set nospell

" read files when they changed
set autoread

" correct splits
set splitbelow
set splitright

" better search
set ignorecase
set smartcase
set incsearch
set hlsearch

" indentation
set tabstop=4
set shiftwidth=4
set smarttab
set smartindent
set autoindent

" better backspace
set backspace=indent,eol,start

" global copy and paste buffer
set clipboard=unnamedplus

" force write
cmap w!! w !sudo tee %
