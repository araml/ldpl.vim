" Vim syntax file
" Language: LDPL
" maintainer: araml
" Latest Revision: 13/03/2019

if exists("b:current_syntax")
    finish
endif

let b:current_syntax = "ldpl"

" Sections and functions
syn match section "\([^ ]\@<!\<data\>\)\(:\)"
syn match section "\([^ ]\@<!\<DATA\>\)\(:\)"
syn match section "\([^ ]\@<!\<procedure\>\)\(:\)"
syn match section "\([^ ]\@<!\<PROCEDURE\>\)\(:\)"
syn match section "[^ ]\@<!\<sub\>-\<procedure\>[^ ]\@!"
syn match section "[^ ]\@<!\<end\> \<sub\>-\<procedure\>[^ ]\@!"

" Branches
syn match conditional "[^ ]\@<!\<while\>[^ ]\@!"
syn match conditional "[^ ]\@<!\<repeat\>[^ ]\@!"
syn match conditional "[^ ]\@<!\<if\>[^ ]\@!"
syn match conditional "[^ ]\@<!\<else\>[^ ]\@!"
syn match conditional "[^ ]\@<!\<end\> \<if\>[^ ]\@!"

" Built in functions
syn match builtIn "[^ ]\@<!\<call\>[^ ]\@!"
syn match builtIn "[^ ]\@<!\<store\>[^ ]\@!"
syn match builtIn "[^ ]\@<!\<display\>[^ ]\@!"

" assignment
syn match macro "[^ ]\@<!\<is\>[^ ]\@!"
syn match macro "[^ ]\@<!\<in\>[^ ]\@!"

" Types
syn match types "[^ ]\@<!\<number\>[^ ]\@!"
syn match types "[^ ]\@<!\<vector\>[^ ]\@!"
syn match types "[^ ]\@<!\<text\>[^ ]\@!"
syn keyword celTodo contained TODO FIXME NOTE
syn match celComment "#.*$" contains=celTodo

" Taken verbatim from the vim syntax tutorial
" Integer with - + or nothing in front
syn match celNumber '\d\+'
syn match celNumber '[-+]\d\+'

" Floating point number with decimal no E or e
syn match celNumber '[-+]\d\+\.\d*'

" Floating point like number with E and no decimal point (+,-)
syn match celNumber '[-+]\=\d[[:digit:]]*[eE][\-+]\=\d\+'
syn match celNumber '\d[[:digit:]]*[eE][\-+]\=\d\+'

" Floating point like number with E and decimal point (+,-)
syn match celNumber '[-+]\=\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+'
syn match celNumber '\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+'

syntax region ldplString start=/\v"/ skip=/\v\\./ end=/\v"/
highlight link ldplString String

syn keyword specialChar crlf

hi def link celTodo               Todo
hi def link celComment            Comment
hi def link celNumber             Constant
hi def link basicLanguageKeywords Statement
hi def link types                 Type
hi def link macro                 Define
hi def link section               Statement
hi def link function              Function
hi def link branching             Repeat
hi def link builtIn               function
hi def link SpecialChar           SpecialChar
hi def link celString             Constant
