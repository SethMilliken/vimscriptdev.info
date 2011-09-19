" Vim syntax file
" Language:	%Language%
" Maintainer:	%Maintainer% <%Email%>
" Last Change:	%Date%

" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

syn keyword	%FileType%Todo	TODO FIXME XXX

" Define the default highlighting.
" Only used when an item doesn't have highlighting yet
hi def link %FileType%Todo	Todo

let b:current_syntax = "%FileType%"

" vim: et sw=2 sts=2
