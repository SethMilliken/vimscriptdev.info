" Vim color file
" Description:	%Plugin% provides some nice colors.
" Maintainer:	%Maintainer% <%Email%>
" Version:	%Version%
" Last Change:	%Date%
" License:	Vim License (see :help license)
" Location:	colors/%Plugin_File%

" First remove all existing highlighting.
hi clear
if exists("syntax_on")
  syntax reset
endif

" Allow use of line continuation.
let s:save_cpo = &cpo
set cpo&vim

let colors_name = "%Plugin_Name%"

hi Normal ctermbg=DarkGrey ctermfg=White guifg=White guibg=grey20

let &cpo = s:save_cpo
unlet s:save_cpo

" vim: et sw=2 sts=2
