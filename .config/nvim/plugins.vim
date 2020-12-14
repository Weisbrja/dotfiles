" install vim-plug
if empty(glob("$HOME/.config/nvim/autoload/plug.vim"))
	silent !curl -fLo "$HOME/.config/nvim/autoload/plug.vim" --create-dirs
		\ 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
endif

" load plugins
call plug#begin("$HOME/.config/nvim/autoload/plugged")
	Plug 'crusoexia/vim-monokai'
	Plug 'ap/vim-css-color'
	Plug 'lervag/vimtex'
call plug#end()
