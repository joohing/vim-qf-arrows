function! vim_qf_arrows#SetSigncolFromQf()
    let result = len(sign_unplacelist(sign_getplaced('', {'name': 'qfresult'})))
    echom "Removed " . result . "signs"

    if len(getqflist()) == 0
        echo "The quickfix list is empty! (vim-qf-arrows)"
        return
    endif

    if !len(sign_getdefined("qfresult"))
        sign define qfresult text=->
    endif

    call sign_placelist(getqflist())

    echo "Placed the arrow markers! (vim-qf-arrows)"
endfunc
