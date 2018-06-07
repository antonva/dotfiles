" Basic nVIM conf
" Author: Anton Vilhelm Ásgeirsson
" Year: 2018
" License: MIT

"------------------------------------------------------------------------------
" vim-plug
"------------------------------------------------------------------------------

call plug#begin('~/.local/share/nvim/plugged')

" GitHub
" Hail TPope
Plug 'tpope/vim-fugitive'                             " Git integration
Plug 'tpope/vim-dispatch'                             " Make tools
Plug 'tpope/vim-surround'                             " Surround selections with tags or []/{}
Plug 'tpope/vim-sleuth'                               " Automatically handle tabstop and shiftwidth
Plug 'scrooloose/syntastic'                           " Syntax highlighting and debugging
Plug 'scrooloose/nerdtree'                            " Directory tree window
Plug 'flazz/vim-colorschemes'                         " A selection of colorschemes.
Plug 'losingkeys/vim-niji'                            " Scheme color parens
Plug 'leafgarland/typescript-vim'                     " Vim syntax for typescript
Plug 'plan9-for-vimspace/acme-colors'                 " ACME colors
Plug 'majutsushi/tagbar'                              " Ctags and other fun tag stuff
Plug 'hushicai/tagbar-javascript.vim'                 " More ctags
Plug 'exu/pgsql.vim'                                  " PostgreSQL syntax.
Plug 'fatih/vim-go'                                   " GoLang goodies.

" VimScripts
Plug 'vim-scripts/L9'              " All sorts of crazy, FuzzyFind dep.
Plug 'vim-scripts/FuzzyFinder'     " Find the fuzzy.

call plug#end() " Automatically sets filetype plugin indent on and syntax enable

"------------------------------------------------------------------------------
" Basic .vimrc settings:
"------------------------------------------------------------------------------

" Turn on syntax highlighting
syntax on

" Use ACME colorscheme
colorscheme acme

" Highlight cursor line horizontally
set cursorline

" NERDTree settings.
let g:NERDTreeWinPos = "right"
nmap <C-n> :NERDTreeToggle<CR>

" Tagbar 
nmap <C-m> :TagbarToggle<CR>

" Toggle pastemode"
set pastetoggle=<leader>p

" Set foldmethod."
set foldmethod=syntax
" Set a scrolloff to kep context
set scrolloff=2

" Set clipboard to use the X Window clipboard
set clipboard=unnamedplus

" Unsorted mess
set ai
set number
set nocompatible
set laststatus=2
set encoding=utf-8

" CTags 
let g:tagbar_type_typescript = {                                                  
  \ 'ctagsbin' : 'tstags',                                                        
  \ 'ctagsargs' : '-f-',                                                           
  \ 'kinds': [                                                                     
    \ 'e:enums:0:1',                                                               
    \ 'f:function:0:1',                                                            
    \ 't:typealias:0:1',                                                           
    \ 'M:Module:0:1',                                                              
    \ 'I:import:0:1',                                                              
    \ 'i:interface:0:1',                                                           
    \ 'C:class:0:1',                                                               
    \ 'm:method:0:1',                                                              
    \ 'p:property:0:1',                                                            
    \ 'v:variable:0:1',                                                            
    \ 'c:const:0:1',                                                              
  \ ],                                                                            
  \ 'sort' : 0                                                                    
\ }  

" list
set listchars=tab:\|\ 
set list

" Formatting
set tabstop=8
set softtabstop=0
set expandtab
set shiftwidth=4
set smarttab

" Golang
au BufWritePost *.go !gofmt -w %
" Scheme
autocmd filetype lisp,scheme,art setlocal equalprg=scmindent.rkt
