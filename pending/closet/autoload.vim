" Vim global library
" Description:	%Plugin% provides some nice feature.
" Maintainer:	%Maintainer% <%Email%>
" Version:	%Version%
" Last Change:	%Date%
" License:	Vim License (see :help license)
" Location:	autoload/%Plugin_File%

if exists("g:loaded_%Plugin%")
"      \ || v:version < 700 || &compatible
  finish
endif
let g:loaded_%Plugin% = 1

let s:save_cpo = &cpo
set cpo&vim

function! %Plugin%#greetings()
  echo "Hello world!"
endfunction


let &cpo = s:save_cpo
unlet s:save_cpo

" vim: et sw=2 sts=2
