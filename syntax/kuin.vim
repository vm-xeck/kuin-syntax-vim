" Vim syntax file
" Language:	Kuin
" Maintainer:	xeck
" Last Change: 2023 Jan 08

" Highlight if not highligted yet
if exists("b:current_syntax")
	finish
endif

syn keyword kuinConstant true false inf null
syn keyword kuinStatement func end if elif else alias assert block break case catch class const dbg default do enum env excode finally for include me ret skip super switch throw to try var while
syn keyword kuinType bit16 bit32 bit64 bit8 bool char float int dict list queue stack 

syn match kuinChar /\v'(.|\\[\\"'0nt])'/
syn match kuinInt /\v[- ^+*/={&][0-9]+/hs=s+1
syn match kuinFloat /\v[- ^+*/={&][0-9]+\.[0-9]+/hs=s+1
syn match kuinBit /\v[- ^+*/={&][0-9]+b(8|16|32|64)/hs=s+1
syn match kuinSpecialChar /\v\\[\\"'0nt]/

syn region kuinComment start="{" end="}" contains=kuinComment
syn region kuin1lComment start="^ *;" end="$" keepend
syn region kuinString start=+"+ end=+"+ contains=kuin2String,kuinSpecialChar
syn region kuin2String start="\\{" end="}" contains=kuinConstant,kuinChar,kuinInt,kuinFloat, kuinBit

hi def link kuinConstant Constant
hi def link kuinStatement Statement
hi def link kuinType Type

hi def link kuinChar Constant
hi def link kuinInt Constant
hi def link kuinFloat Constant
hi def link kuinBit Constant
hi def link kuinSpecialChar SpeclaiChar

hi def link kuinComment Comment
hi def link kuin1lComment Comment
hi def link kuinString Constant
hi def link kuin2String NONE

let b:current_syntax = "kuin"
