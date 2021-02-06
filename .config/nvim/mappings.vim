" window navigation
noremap <m-h> <c-w>h
noremap <m-j> <c-w>j
noremap <m-k> <c-w>k
noremap <m-l> <c-w>l

" resize windows
nnoremap <c-h> :vertical resize -2<cr>
nnoremap <c-j> :resize +2<cr>
nnoremap <c-k> :resize -2<cr>
nnoremap <c-l> :vertical resize +2<cr>

" disable the highlighting of search results
nnoremap // :nohlsearch<cr>

" better tabbing
vnoremap < <gv
vnoremap > >gv

xnoremap @ :<c-u>call ExecuteMacroOverVisualRange()<return>
function! ExecuteMacroOverVisualRange()
	echo "@".getcmdline()
	execute ":'<,'>normal @".nr2char(getchar())
endfunction
