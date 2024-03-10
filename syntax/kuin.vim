" Vim syntax file
" Language:	Kuin
" Maintainer:	vm_xeck
" Last Change: 2024 Jan 1

" Highlight if not highligted yet
if exists("b:current_syntax")
	finish
endif

syn keyword kuinConstant true false inf null
syn keyword kuinStatement func end if elif else alias assert block break case catch class const dbg default do enum env excode finally for include me ret skip super switch throw to try var while
syn keyword kuinType bit16 bit32 bit64 bit8 bool char float int dict list queue stack 
syn keyword kuinTodo TODO FIXME XXX contained

syn match kuinChar /\v'(.|\\[\\"'0nt]|\\u[0-9A-F]{4})'/ contains=kuinSpecialChar,kuinCharCode
syn match kuinInt /\v[^0-9A-Za-z][0-9]+/hs=s+1
syn match kuinIntHex /\v[^0-9A-Za-z]0x[0-9A-F]+/hs=s+1
syn match kuinFloat /\v[^0-9A-Za-z][0-9]+\.[0-9]+/hs=s+1
syn match kuinBit /\v[^0-9A-Za-z][0-9]+b(8|16|32|64)/hs=s+1
syn match kuinSpecialChar /\v\\[\\"'0nt]/ contained
syn match kuinCharCode /\v\\u[0-9A-F]{4}/ contained

syn region kuinComment start="{" end="}" contains=kuinComment,kuinTodo
syn region kuin1lComment start="^ *;" end="$" keepend contains=kuinTodo
syn region kuinString start=+"+ end=+"+ contains=kuin2String,kuinSpecialChar,kuinCharCode
syn region kuin2String start="\\{" end="}" contains=kuinConstant,kuinChar,kuinInt,kuinFloat,kuinBit

hi def link kuinConstant Constant
hi def link kuinStatement Statement
hi def link kuinType Type
hi def link kuinTodo Todo

hi def link kuinChar Constant
hi def link kuinInt Constant
hi def link kuinIntHex Constant
hi def link kuinFloat Constant
hi def link kuinBit Constant
hi def link kuinSpecialChar SpecialChar
hi def link kuinCharCode SpecialChar

hi def link kuinComment Comment
hi def link kuin1lComment Comment
hi def link kuinString Constant
hi def link kuin2String SpecialChar

let b:current_syntax = "kuin"
