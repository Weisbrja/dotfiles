" completion with snippets
inoremap <silent><expr> <tab>
			\ pumvisible() ? coc#_select_confirm() :
			\ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump'])\<cr>" :
			\ coc#refresh()

let g:coc_snippet_next='<tab>'
let g:coc_snippet_last='<s-tab>'
xmap <tab> <Plug>(coc-snippets-select)
