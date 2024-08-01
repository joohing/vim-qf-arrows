" Title:        vim-qf-arrows
" Description:  The minimalist way to use your sign column.
" Last Change:  1 August 2024
" Maintainer:   Jonathan Samsing <https://github.com/joohing>

" Prevents the plugin from being loaded multiple times. If the loaded
" variable exists, do nothing more. Otherwise, assign the loaded
" variable and continue running this instance of the plugin.
if exists("g:loaded_vim_qf_arrows")
    finish
endif
let g:loaded_vim_qf_arrows = 1

" Exposes the plugin's functions for use as commands in Vim.
command! -nargs=0 SetSigncolumnFromQf call vim_qf_arrows#SetSigncolFromQf()
