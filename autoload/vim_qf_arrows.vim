function! vim_qf_arrows#SetSigncolFromQf()
    let result = len(sign_unplacelist(sign_getplaced('', {'name': 'qfarrow'})))
    echom "Removed " . result . " signs"

    if len(getqflist()) == 0
        echo "The quickfix list is empty! (vim-qf-arrows)"
        return
    endif

    if !len(sign_getdefined("qfarrow"))
        call sign_define("qfarrow", {
                    \ "text": "->",
                    \ "texthl": "Search"})
    endif

    let signlist = []

    for entry in getqflist()
        let signlist += {'name': 'qfarrow', 'buffer': entry.bufnr, 'lnum': entry.lnum}
    endfor

    echom sign_placelist(signlist)

    echo "Placed the arrow markers! (vim-qf-arrows)"
endfunc
