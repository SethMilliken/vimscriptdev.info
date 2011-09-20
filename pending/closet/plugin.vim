" Vim global plugin
" Description:	%Plugin% provides some nice feature.
" Maintainer:	%Maintainer% <%Email%>
" Version:	%Version%
" Last Change:	%Date%
" License:	Vim License (see :help license)
" Location:	plugin/%Plugin_File%

if exists("g:loaded_%Plugin%")
"      \ || v:version < 700 || &compatible
  finish
endif
let g:loaded_%Plugin% = 1

" Allow use of line continuation.
let s:save_cpo = &cpo
set cpo&vim

" What should we put here?
"


let &cpo = s:save_cpo
unlet s:save_cpo

" vim: et sw=2 sts=2
