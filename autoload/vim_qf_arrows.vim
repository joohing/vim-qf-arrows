function! vim_qf_arrows#SetSigncolFromQf()
    if len(getqflist()) == 0
        echo "The quickfix list is empty! (vim-qf-arrows)"
        return
    endif

    call vim_qf_arrows#ClearSigncolumn()

    if !len(sign_getdefined("qfarrow"))
        call sign_define("qfarrow", {
                    \ "text": "->",
                    \ "texthl": "Search"})
    endif

    let signlist = []

    for entry in getqflist()
        let signlist += [{'name': 'qfarrow', 'buffer': entry.bufnr, 'lnum': entry.lnum}]
    endfor

    echom sign_placelist(signlist)

    echo "Placed the arrow markers! (vim-qf-arrows)"
endfunc

function! vim_qf_arrows#ClearSigncolumn()
    sign_unplacelist(sign_getplaced('', {'name': 'qfarrow'}))
endfunc
