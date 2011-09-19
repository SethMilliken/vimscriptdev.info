" File:		%Plugin_File%
" Description:	Vim global plugin that provides some feature.
" Maintainer:	%Maintainer% <%Email%>
" Version:	%Version%
" Last Change:	%Date%
" License:	This file is placed in the public domain.

if exists("g:loaded_%Plugin%")
"      \ || v:version < 700 || &compatible
  finish
endif
let g:loaded_%Plugin% = 1

let s:save_cpo = &cpo
set cpo&vim




let &cpo = s:save_cpo
unlet s:save_cpo

" vim: et sw=2 sts=2
