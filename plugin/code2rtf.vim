if !has('python') || !(has("win32") || has("win95") || has("win64") || has("win16"))
    finish
endif

if !exists('g:c2rtf_fontsize')
    let g:c2rtf_fontsize = '24'
endif

if !exists('g:c2rtf_fontface')
    let g:c2rtf_fontface = ''
endif

if !exists('g:c2rtf_style')
    let g:c2rtf_style = 'default'
endif

let s:pyscript = expand('<sfile>:p:r') . '.py'

function! s:Code2Rtf(line1, line2)
    exe 'pyfile' s:pyscript
endfunction

command! -range=% C2Rtf :call s:Code2Rtf(<line1>, <line2>)
vnoremap <silent> <leader>rt :C2Rtf<Enter>
noremap <silent> <leader>rt :C2Rtf<Enter>
