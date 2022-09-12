" Vim syntax file
" Language:	Kuin
" Maintainer:	xeck
" Last Change: 2022 Sep 11

" Do highlight if not highligted yet
if exists("b:current_syntax")
	finish
endif

syn keyword kuinConstant true false inf null
syn keyword kuinStatement func end if elif else alias assert block break case catch class const dbg default do enum env excode finally for include me ret skip super switch throw to try var while
syn keyword kuinType bit16 bit32 bit64 bit8 bool char float int dict list queue stack 

syn region kuinComment start="{" end="}"
syn region kuin1lComment start="^ *;" end="$" keepend

hi def link kuinConstant Constant
hi def link kuinStatement Statement
hi def link kuinType Type

hi def link kuinComment Comment

let b:current_syntax = "kuin"
