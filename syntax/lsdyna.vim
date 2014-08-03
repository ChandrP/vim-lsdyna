"-------------------------------------BOF---------------------------------------
"
" Vim syntax file
"
" Language:     Ls-Dyna FE solver input file
" Maintainer:   Bartosz Gradzik (bartosz.gradzik@hotmail.com)
" Contribution: Jakub Pajerski
" Last Change:  1st of January 2014
"
" History: v1.0.0: From gradzikb.
" 	v1.0.1p: (Praphulla) Modified to allow alternating background highlighting of all
" 	columns. Changed colorscheme to solarized.
" 	v1.1.1p: (Gradzik) Updated to support diff. keyword formats. (Praphulla)
" 	modified to support v1.0.1p changes.
"
"-------------------------------------------------------------------------------

" if syntax is already loaded
if exists("b:current_syntax")
  finish
endif
let b:current_syntax = "lsdyna"

"-------------------------------------------------------------------------------
"    Standard Ls-Dyna keyword
"-------------------------------------------------------------------------------

syntax match LsDynaStd110Col  '\%1c.\{10}'  contained
syntax match LsDynaStd210Col  '\%11c.\{10}' contained
syntax match LsDynaStd310Col  '\%21c.\{10}' contained
syntax match LsDynaStd410Col  '\%31c.\{10}' contained
syntax match LsDynaStd510Col  '\%41c.\{10}' contained
syntax match LsDynaStd610Col  '\%51c.\{10}' contained
syntax match LsDynaStd710Col  '\%61c.\{10}' contained
syntax match LsDynaStd810Col  '\%71c.\{10}' contained


syntax cluster LsDynaStdKeywordCluster add=LsDynaStd110Col
syntax cluster LsDynaStdKeywordCluster add=LsDynaStd210Col
syntax cluster LsDynaStdKeywordCluster add=LsDynaStd310Col
syntax cluster LsDynaStdKeywordCluster add=LsDynaStd410Col
syntax cluster LsDynaStdKeywordCluster add=LsDynaStd510Col
syntax cluster LsDynaStdKeywordCluster add=LsDynaStd610Col
syntax cluster LsDynaStdKeywordCluster add=LsDynaStd710Col
syntax cluster LsDynaStdKeywordCluster add=LsDynaStd810Col
syntax cluster LsDynaStdKeywordCluster add=LsDynaComment
syntax cluster LsDynaStdKeywordCluster add=LsDynaKeyword
syntax cluster LsDynaStdKeywordCluster add=LsDynaTitle

syntax region LsDynaStdKeyword start=/^\*[a-zA-z]/ end=/^\*/me=s-1
 \ contains=@LsDynaStdKeywordCluster

hi def link LsDynaStd210Col Todo
hi def link LsDynaStd410Col Todo
hi def link LsDynaStd610Col Todo
hi def link LsDynaStd810Col Todo

hi def link LsDynaStd110Col Ignore
hi def link LsDynaStd310Col Ignore
hi def link LsDynaStd510Col Ignore
hi def link LsDynaStd710Col Ignore

"-------------------------------------------------------------------------------
"    Keywords
"    Note that LsDynaComment and LsDynaKeyword must be repeated after every
"    alternate card type (node, elem) in order to capture comments or keywords
"    within that card. Positioning of this section after matching the data
"    lines is vital (i.e. don't move this.)
"-------------------------------------------------------------------------------

syntax match LsDynaComment '^[$#].*$' contained
syntax match LsDynaTitle '^[a-zA-Z?.].*$' contained
syntax match LsDynaKeyword '^*[a-zA-Z].*$' contains=LsDynaKeywordOption contained
syntax match LsDynaKeywordOption '_.*$' contained

hi def link LsDynaComment Comment
hi def link LsDynaKeyword Statement
hi def link LsDynaKeywordOption Type
hi def link LsDynaTitle Identifier

"-------------------------------------------------------------------------------
"    *NODE
"-------------------------------------------------------------------------------

syntax match LsDynaNode108Col  '\%1c.\{8}'  contained
syntax match LsDynaMode216Col  '\%9c.\{16}' contained
syntax match LsDynaNode316Col  '\%25c.\{16}' contained
syntax match LsDynaNode416Col  '\%41c.\{16}' contained
syntax match LsDynaNode508Col  '\%57c.\{8}' contained
syntax match LsDynaNode608Col  '\%65c.\{8}' contained

syntax cluster LsDynaNodeCluster add=LsDynaNode108Col
syntax cluster LsDynaNodeCluster add=LsDynaNode216Col
syntax cluster LsDynaNodeCluster add=LsDynaNode316Col
syntax cluster LsDynaNodeCluster add=LsDynaNode416Col
syntax cluster LsDynaNodeCluster add=LsDynaNode508Col
syntax cluster LsDynaNodeCluster add=LsDynaNode608Col
syntax cluster LsDynaNodeCluster add=LsDynaComment
syntax cluster LsDynaNodeCluster add=LsDynaKeyword

syntax region LsDynaNodeKeyword start=/\c^\*NODE *$/ end=/^\*/me=s-1
 \ contains=@LsDynaNodeCluster

syntax sync match LsDynaNodeSync grouphere LsDynaNodeKeyword '\c^\*NODE *$'

hi def link LsDynaNode216Col Todo
hi def link LsDynaNode416Col Todo
hi def link LsDynaNode608Col Todo

hi def link LsDynaNode108Col Ignore
hi def link LsDynaNode316Col Ignore
hi def link LsDynaNode508Col Ignore

syntax match LsDynaComment '^[$#].*$' contained
"syntax match LsDynaKeyword '^*[a-zA-Z].*$' contains=LsDynaKeywordOption contained

"-------------------------------------------------------------------------------
"    Most *ELEMENT_
"-------------------------------------------------------------------------------

syntax match LsDynaEL108Col  '\%1c.\{8}'  contained
syntax match LsDynaEL208Col  '\%9c.\{8}' contained
syntax match LsDynaEL308Col  '\%17c.\{8}' contained
syntax match LsDynaEL408Col  '\%25c.\{8}' contained
syntax match LsDynaEL508Col  '\%33c.\{8}' contained
syntax match LsDynaEL608Col  '\%41c.\{8}' contained
syntax match LsDynaEL708Col  '\%49c.\{8}' contained
syntax match LsDynaEL808Col  '\%57c.\{8}' contained
syntax match LsDynaEL908Col  '\%65c.\{8}' contained
syntax match LsDynaEL1008Col '\%73c.\{8}' contained

syntax cluster LsDynaELCluster add=LsDynaEL108Col
syntax cluster LsDynaELCluster add=LsDynaEL208Col
syntax cluster LsDynaELCluster add=LsDynaEL308Col
syntax cluster LsDynaELCluster add=LsDynaEL408Col
syntax cluster LsDynaELCluster add=LsDynaEL508Col
syntax cluster LsDynaELCluster add=LsDynaEL608Col
syntax cluster LsDynaELCluster add=LsDynaEL708Col
syntax cluster LsDynaELCluster add=LsDynaEL808Col
syntax cluster LsDynaELCluster add=LsDynaEL908Col
syntax cluster LsDynaELCluster add=LsDynaEL1008Col
syntax cluster LsDynaELCluster add=LsDynaComment
syntax cluster LsDynaELCluster add=LsDynaKeyword

syntax region LsDynaELKeyword start=/\c^\*ELEMENT_[a-zA-Z]\+ *$/ end=/^\*/me=s-1
 \ contains=@LsDynaELCluster

syntax sync match LsDynaELSync grouphere LsDynaELKeyword '\c^\*ELEMENT_[a-zA-Z]\+ *$'

hi def link LsDynaEL208Col Todo
hi def link LsDynaEL408Col Todo
hi def link LsDynaEL608Col Todo
hi def link LsDynaEL808Col Todo
hi def link LsDynaEL1008Col Todo

hi def link LsDynaEL108Col Ignore
hi def link LsDynaEL308Col Ignore
hi def link LsDynaEL508Col Ignore
hi def link LsDynaEL708Col Ignore
hi def link LsDynaEL908Col Ignore

syntax match LsDynaComment '^[$#].*$' contained
syntax match LsDynaKeyword '^*[a-zA-Z].*$' contains=LsDynaKeywordOption contained

"-------------------------------------EOF---------------------------------------
