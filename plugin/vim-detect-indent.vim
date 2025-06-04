vim9script

import autoload '../autoload/detectindent.vim'

def AutoDetectIndent()
    var indent_size = detectindent.DetectIndent()
    if (indent_size > 0)
        execute 'setlocal shiftwidth=' .. indent_size
        execute 'setlocal tabstop=' .. indent_size
        execute 'setlocal softtabstop=' .. indent_size
    endif
enddef

augroup au_AutoDetectIndent
    autocmd!
    autocmd BufEnter * AutoDetectIndent()
augroup END
