" set <Tab> to go to next entry in completion menu
inoremap <silent> <expr> <Tab>
	\ pumvisible() ? "\<C-n>" :
	\ <SID>check_back_space() ? "\<Tab>" :
	\ coc#refresh()

" set <S-Tab> to go to last entry in completion menu
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<C-h>"

" set back space to abort completion menu
function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1] =~# '\s'
endfunction

" set K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
	if (index(['vim','help'], &filetype) >= 0)
		execute 'h '.expand('<cword>')
	elseif (coc#rpc#ready())
		call CocActionAsync('doHover')
	else
		execute '!' . &keywordprg . " " . expand('<cword>')
	endif
endfunction
