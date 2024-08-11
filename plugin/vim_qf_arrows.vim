" Title:        vim-qf-arrows
" Description:  The minimalist way to use your sign column.
" Last Change:  1 August 2024
" Maintainer:   Jonathan Samsing <https://github.com/joohing>

" Save the user from being a dummy dum dum
if exists("g:loaded_vim_qf_arrows")
    finish
endif
let g:loaded_vim_qf_arrows = 1

" Put an arrow at each position of each qf entry.
command! -nargs=0 SetSigncolumnFromQf call vim_qf_arrows#SetSigncolFromQf()

" Remove all signs from the sign column.
command! -nargs=0 ClearSigncolumn call vim_qf_arrows#ClearSigncolumn()
