" Vim color file
" Maintainer:	%Maintainer% <%Email%>
" Last Change:	%Date%

" First remove all existing highlighting.
hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "%Plugin_Name%"

hi Normal ctermbg=DarkGrey ctermfg=White guifg=White guibg=grey20

" vim: et sw=2 sts=2
