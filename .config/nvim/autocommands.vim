" disable automatic continuation of comments
autocmd FileType * setlocal formatoptions-=cro

" execute xrdb after writing to Xresources
autocmd BufWritePost Xresources !xrdb %
