function vim_qf_arrows#SetSigncolFromQf()
    if len(getqflist()) == 0
        echo "The quickfix list is empty! (vim-qf-arrows)"
        return
    endif

    call sign_unplacelist(sign_getplaced())

    sign define qfresult text=->
    let idx = 1
    for entry in getqflist()
        exe "sign place " . l:idx . " line=" . entry["lnum"] . " name=qfresult buffer=" . entry["bufnr"]
        let idx += 1
    endfor

    echo "Placed the arrow markers! (vim-qf-arrows)"
endfunc