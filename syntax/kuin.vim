" Vim syntax file
" Language:	Kuin
" Maintainer:	xeck
" Last Change: 2022 Sep 13

" Highlight if not highligted yet
if exists("b:current_syntax")
	finish
endif

syn keyword kuinConstant true false inf null
syn keyword kuinStatement func end if elif else alias assert block break case catch class const dbg default do enum env excode finally for include me ret skip super switch throw to try var while
syn keyword kuinType bit16 bit32 bit64 bit8 bool char float int dict list queue stack 

syn match kuinChar /'.'/hs=s+1,he=e-1
syn match kuinInt /[ \^\+\-\*\/=][0-9]+/hs=s+1

syn region kuinComment start="{" end="}"
syn region kuin1lComment start="^ *;" end="$" keepend
syn region kuinString start=+"+ end=+"+

hi def link kuinConstant Constant
hi def link kuinStatement Statement
hi def link kuinType Type

hi def link kuinChar Constant
hi def link kuinInt Constant

hi def link kuinComment Comment
hi def link kuin1lComment Comment
hi def link kuinString Constant

let b:current_syntax = "kuin"
