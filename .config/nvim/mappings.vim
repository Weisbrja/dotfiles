" leader key
nnoremap <space> <nop>
let g:mapleader="\<space>"

" resize windows
nnoremap <m-d> :vertical resize -2<cr>
nnoremap <m-j> :resize +2<cr>
nnoremap <m-k> :resize -2<cr>
nnoremap <m-l> :vertical resize +2<cr>

" disable the highlighting of search results
nnoremap // :nohlsearch<cr>

" better tabbing
vnoremap < <gv
vnoremap > >gv

" macro over range
xnoremap @ :<c-u>call ExecuteMacroOverVisualRange()<cr>

function! ExecuteMacroOverVisualRange()
	echo "@".getcmdline()
	execute ":'<,'>normal @".nr2char(getchar())
endfunction

" go to definition
nmap <silent> gd <plug>(coc-definition)

" rename symbol
nmap <leader>r <plug>(coc-rename)

" show documentation
nnoremap <silent> K :call <sid>show_documentation()<cr>

function! s:show_documentation()
	if (index(['vim','help'], &filetype) >= 0)
		execute 'h '.expand('<cword>')
	elseif (coc#rpc#ready())
		call CocActionAsync('doHover')
	else
		execute '!' . &keywordprg . " " . expand('<cword>')
	endif
endfunction

" completion
inoremap <silent><expr> <tab>
			\ pumvisible() ? coc#_select_confirm() :
			\ coc#expandableOrJumpable() ? "\<c-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<cr>" :
			\ <sid>check_back_space() ? "\<tab>" :
			\ coc#refresh()

function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" snippets
let g:coc_snippet_next = '<tab>'
let g:coc_snippet_prev = '<s-tab>'
