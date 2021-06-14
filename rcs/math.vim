command! -nargs=1 Math call s:Calc(<f-args>)

function s:Calc(calcul)

    let s:filename = stdpath('config') . '/txt/math_history.txt'
    let s:opp = a:calcul
    let h = readfile(s:filename)

    if stridx(a:calcul, '?') != -1
        let s:opp = substitute(a:calcul, "?", h[-1], "")
    endif

    let h = add(h, s:opp)
    echo system('python -c "from math import *; print('.s:opp.')"')
    call writefile(h, s:filename)

endfunction
