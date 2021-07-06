" force write
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

" disable highlighting search results
nnoremap // :nohlsearch<cr>

" better tabbing
vnoremap < <gv
vnoremap > >gv

" move between splits
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

" execute a macro over a visual range
xnoremap @ :<c-u>call ExecuteMacroOverVisualRange()<cr>

function! ExecuteMacroOverVisualRange()
    echo "@".getcmdline()
    execute ":'<,'>normal @".nr2char(getchar())
endfunction
