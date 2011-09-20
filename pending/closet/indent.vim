" Vim indent file
" Language:	%Language%
" Maintainer:	%Maintainer% <%Email%>
" Version:	%Version%
" Last Change:	%Date%
" License:	Vim License (see :help license)
" Location:	indent/%Plugin_File%

" Only load this indent file when no other was loaded.
if exists("b:did_indent")
   finish
endif
let b:did_indent = 1

" Allow use of line continuation.
let s:save_cpo = &cpo
set cpo&vim

setlocal indentexpr=Get%FileType%Indent()
setlocal indentkeys+=

" Only define the function once.
if exists("*Get%FileType%Indent")
  finish
endif

function Get%FileType%Indent()
  " Do magic here.
endfunction

" Restore when changing filetype.
let b:undo_indent = "setl indentexpr< indentkeys<"

let &cpo = s:save_cpo
unlet s:save_cpo

" vim: et sw=2 sts=2
