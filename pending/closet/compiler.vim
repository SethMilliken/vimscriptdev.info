" Vim compiler file
" Compiler:	%Language%
" Maintainer:	%Maintainer% <%Email%>
" Last Change:	%Date%

if exists("current_compiler")
  finish
endif
let current_compiler = "%FileType%"

" Un-comment the following lines and the ones at the bottom to use continued lines
"let s:cpo_save = &cpo
"set spo-=C

" Older Vim don't define :CompilerSet
if exists(":CompilerSet") != 2
  command -nargs=* CompilerSet setlocal <args>
endif
CompilerSet errorformat=
CompilerSet makeprg=

" Un-comment the following two lines to use continued lines
"let &cpo = s:cpo_save
"unlet s:cpo_save

" vim: et sw=2 sts=2
