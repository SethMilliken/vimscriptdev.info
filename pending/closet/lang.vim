" Menu Translations:	%Language%
" Maintainer:		%Maintainer% <%Email%>
" Last Change:		%Date%

" Quit when menu translations have already been done.
if exists("did_menu_trans")
  finish
endif
let did_menu_trans = 1

" Help menu
menutrans &Help			&HelpTranslation
