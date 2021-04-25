" disable automatic continuation of comments
autocmd FileType * setlocal formatoptions-=cro

" rainbow parentheses
autocmd VimEnter * RainbowParenthesesToggle
autocmd Syntax * RainbowParenthesesLoadRound
autocmd Syntax * RainbowParenthesesLoadSquare
autocmd Syntax * RainbowParenthesesLoadBraces

" execute xrdb after writing to xresources
autocmd BufWritePost Xresources !xrdb %
