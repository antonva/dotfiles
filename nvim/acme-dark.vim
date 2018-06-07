highlight clear 
let g:colors_name = "acme-dark"

" for cterm, 'black' might get overwritten by the terminal emulator, so we use
" 232 (#080808), which is close enough.
hi Normal       guibg=#242424 guifg=#000000            ctermbg=none ctermfg=15 
hi NonText      guibg=bg      guifg=#ffffea            ctermbg=none ctermfg=15
hi StatusLine   guibg=#5D5D5D guifg=#000000 gui=NONE   ctermbg=8    ctermfg=15 cterm=NONE
hi StatusLineNC guibg=#eaffff guifg=#000000 gui=NONE   ctermbg=15   ctermfg=8  cterm=NONE
hi WildMenu     guibg=#000000 guifg=#eaffff gui=NONE   ctermbg=0    ctermfg=159  cterm=NONE
hi VertSplit    guibg=#ffffea guifg=#000000 gui=NONE   ctermbg=none ctermfg=8  cterm=NONE
hi Folded       guibg=#cccc7c guifg=fg      gui=italic ctermbg=187  ctermfg=fg   cterm=italic
hi FoldColumn   guibg=#fcfcce guifg=fg                 ctermbg=229  ctermfg=fg
hi Conceal      guibg=bg      guifg=fg      gui=NONE   ctermbg=none ctermfg=fg   cterm=NONE
hi LineNr       guibg=bg      guifg=#8F8F8F gui=italic ctermbg=none ctermfg=8  cterm=italic
hi Visual       guibg=fg      guifg=bg                 ctermbg=fg   ctermfg=none
hi CursorLine   guibg=#ffffca guifg=fg                 ctermbg=245  ctermfg=none

hi Statement    guibg=bg      guifg=fg      gui=italic ctermbg=none  ctermfg=fg  cterm=italic
hi Identifier   guibg=bg      guifg=fg      gui=bold   ctermbg=none  ctermfg=fg  cterm=bold
hi Type         guibg=bg      guifg=fg      gui=bold   ctermbg=none  ctermfg=fg  cterm=bold
hi PreProc      guibg=bg      guifg=fg      gui=bold   ctermbg=none  ctermfg=fg  cterm=bold
hi Constant     guibg=bg      guifg=#101010 gui=bold   ctermbg=none  ctermfg=15 cterm=italic
hi Comment      guibg=bg      guifg=#303030 gui=italic ctermbg=none  ctermfg=236 cterm=italic
hi Special      guibg=bg      guifg=fg      gui=bold   ctermbg=none  ctermfg=fg  cterm=bold
hi SpecialKey   guibg=bg      guifg=fg      gui=bold   ctermbg=none  ctermfg=fg  cterm=bold
hi Directory    guibg=bg      guifg=fg      gui=bold   ctermbg=none  ctermfg=fg  cterm=bold

hi link Title Directory
hi link MoreMsg Comment
hi link Question Comment

" vim
hi link vimFunction Identifier

