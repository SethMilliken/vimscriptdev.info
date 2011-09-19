" Vim filetype plugin file
" Language:	%Language%
" Maintainer:	%Maintainer% <%Email%>
" Last Change:	%Date%

" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
  finish
endif

" Don't load another plugin for this buffer
let b:did_ftplugin = 1

" Using line continuation here.
let s:cpo_save = &cpo
set cpo-=C

" Restore things when changing filetype.
let b:undo_ftplugin = "setl fo< com< ofu<"

" Configure the matchit plugin.
let b:match_words = &matchpairs
let b:match_skip = 's:comment\|string\|character'
"let b:match_ignorecase = 1

" Set 'formatoptions' to break comment lines but not other lines,
" and insert the comment leader when hitting <CR> or using "o".
setlocal fo-=t fo+=croql

" Set completion with CTRL-X CTRL-O to autoloaded function.
"if exists('&ofu')
"  setlocal ofu=complete#Complete
"endif

" Set 'comments'.
"setlocal comments&

let &cpo = s:cpo_save
unlet s:cpo_save

" vim: et sw=2 sts=2
