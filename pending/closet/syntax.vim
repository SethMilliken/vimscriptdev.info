" Vim syntax file
" Language:	%Language%
" Maintainer:	%Maintainer% <%Email%>
" Version:	%Version%
" Last Change:	%Date%
" License:	Vim License (see :help license)
" Location:	syntax/%Plugin_File%

" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

" Allow use of line continuation.
let s:save_cpo = &cpo
set cpo&vim

syn keyword	%FileType%Todo	TODO FIXME XXX

" Define the default highlighting.
" Only used when an item doesn't have highlighting yet
hi def link %FileType%Todo	Todo

let b:current_syntax = "%FileType%"

let &cpo = s:save_cpo
unlet s:save_cpo

" vim: et sw=2 sts=2
