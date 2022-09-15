if exists('b:did_indent')
	finish
endif

setlocal autoindent
setlocal indentexpr=GetKuinIndent()
setlocal indentkeys=!^F,o,O,0=block,0=class,0=enum,0=for,0=func,0=if,0=elif,0=else,0=switch,0=try,0=while,0=case

setlocal expandtab
setlocal tabstop<
setlocal softtabstop=4
setlocal shiftwidth=4

let b:undo_indent='setlocal'.join(['autoindent<', 'expandtab<', 'indentkeys<', 'shiftwidth<', 'softtabstop<'])

function! GetKuinIndent()
	return -1
endfunction

let b:did_indent=1
