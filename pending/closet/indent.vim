" Vim indent file
" Language:	%Language%
" Maintainer:	%Maintainer% <%Email%>
" Last Change:	%Date%

" Only load this indent file when no other was loaded.
if exists("b:did_indent")
   finish
endif
let b:did_indent = 1

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

" vim: et sw=2 sts=2
