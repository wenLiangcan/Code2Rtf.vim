if !has('python')
    finish
endif

let s:pyscript = expand('<sfile>:p:r') . '.py'

function! s:Code2Rtf(line1, line2)
    exe 'pyfile' s:pyscript
endfunction

command! -range=% C2Rtf :call s:Code2Rtf(<line1>, <line2>)
vnoremap <silent> <leader>hh :C2Rtf
