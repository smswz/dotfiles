" Twilight.vim theme
" cwizi

" Restore default colors
hi clear
set background=dark 


if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "Twilight"


hi Normal guibg=#333333 guifg=#f8f8f8
hi NonText guibg=#333333 guifg=#ffed78
hi Cursor guibg=#ffed78 guifg=black

"blue
hi Statement  guifg=#55bcf1 gui=none
"purple
hi Constant   guifg=#bf7dfc
"red
hi String     guifg=#db404c
" teal-ish
hi Comment    guifg=#a4baae
" orange
hi PreProc    guifg=#ff8d5c
" purple
hi Character  guifg=#bf7dfc
" purple
hi Number     guifg=#bf7dfc
hi Type       guifg=orange   gui=none
hi Special    guifg=#ffa0a0
hi Identifier guifg=#60DD60
" green
hi Function   guifg=#ffa0a0


hi link SpecialKey Comment
hi link Directory  Comment

"
" Colors not part of the original set:
"
"hi Folded guifg=cyan4 guibg=grey20
hi Folded guifg=grey90 guibg=grey45
hi Visual gui=reverse guibg=fg guifg=darkolivegreen
hi Search guifg=black guibg=LightSkyBlue3 gui=none
"hi IncSearch guifg=yellow guibg=LightSkyBlue3 gui=bold
hi IncSearch guibg=blue guifg=yellow gui=bold
hi WarningMsg guifg=red guibg=GhostWhite gui=bold
hi Error guibg=red3


" Here are the original colors:
"hi guifg=grey70 gui=bold
"hi guifg=#FF7070 gui=bold
"hi guifg=green gui=bold
"hi guifg=yellow gui=bold
"hi guifg=SkyBlue gui=bold
"hi guifg=orchid1 gui=bold
"hi guifg=Cyan gui=bold
"hi guifg=White gui=bold
"
