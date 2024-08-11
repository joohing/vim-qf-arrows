function! vim_qf_arrows#SetSigncolFromQf()
    echo "Why isn't this working!!?"
    
    " echom "Testing if this works: " . sign_unplacelist(sign_getplaced('', {'name': 'qfresult'}))

    " if len(getqflist()) == 0
    "     echo "The quickfix list is empty! (vim-qf-arrows)"
    "     return
    " endif

    " if !sign_getdefined("qfresult")
    "     sign define qfresult text=->
    " endif

    " sign_placelist(getqflist())

    " echo "Placed the arrow markers! (vim-qf-arrows)"
endfunc
