" Vim compiler file
" Compiler:	%Compiler%
" Maintainer:	%Maintainer% <%Email%>
" Version:	%Version%
" Last Change:	%Date%
" License:	Vim License (see :help license)
" Location:	compiler/%Plugin_File%

if exists("current_compiler")
  finish
endif
let current_compiler = "%FileType%"

" Allow use of line continuation.
let s:save_cpo = &cpo
set cpo&vim

" Older Vim don't define :CompilerSet
if exists(":CompilerSet") != 2
  command -nargs=* CompilerSet setlocal <args>
endif
CompilerSet errorformat=%A%f:%l:\ %m,%-Z%p^,%-C%.%#
CompilerSet makeprg=javac

let &cpo = s:save_cpo
unlet s:save_cpo

" vim: et sw=2 sts=2
