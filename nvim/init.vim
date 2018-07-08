" Basic nVIM conf
" Author: Anton Vilhelm Ásgeirsson
" Year: 2018
" License: MIT

"------------------------------------------------------------------------------
" vim-plug
"------------------------------------------------------------------------------

call plug#begin('~/.local/share/nvim/plugged')
    function! DoRemote(arg)
	UpdateRemotePlugins
    endfunction

" GitHub
" Hail TPope
Plug 'tpope/vim-fugitive'                             " Git integration
Plug 'tpope/vim-dispatch'                             " Make tools
Plug 'tpope/vim-surround'                             " Surround selections with tags or []/{}
Plug 'tpope/vim-sleuth'                               " Automatically handle tabstop and shiftwidth
Plug 'scrooloose/syntastic'                           " Syntax highlighting and debugging
Plug 'scrooloose/nerdtree'                            " Directory tree window
Plug 'flazz/vim-colorschemes'                         " A selection of colorschemes.
Plug 'plan9-for-vimspace/acme-colors'                 " ACME colors
Plug 'losingkeys/vim-niji'                            " Scheme color parens
Plug 'majutsushi/tagbar'                              " Ctags and other fun tag stuff
Plug 'exu/pgsql.vim'                                  " PostgreSQL syntax highlighting.
Plug 'fatih/vim-go'                                   " GoLang syntax highlighting and more.
Plug 'neovimhaskell/haskell-vim'                      " Haskell syntax highlighting.
Plug 'alx741/vim-hindent'                             " Haskell indentation plugin.
Plug 'sirtaj/vim-openscad'                            " OpenSCAD syntax highlighting.
Plug 'ludovicchabant/vim-gutentags'                   " Incremental tag management.
Plug 'vim-airline/vim-airline'                        " Cosmetic update to VIM.
Plug 'vim-airline/vim-airline-themes'                 " Cosmetic update to VIM.
Plug 'chrisbra/csv.vim'                               " Work with CSV files
Plug 'neomake/neomake'

" NeoVIM JavaScript doodads
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }

" TypeScript
Plug 'Shougo/vimproc.vim', { 'do': 'make'}
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
Plug 'leafgarland/typescript-vim'

" VimScripts
Plug 'vim-scripts/L9'              " All sorts of crazy, FuzzyFind dep.
Plug 'vim-scripts/FuzzyFinder'     " Find the fuzzy.

call plug#end() " Automatically sets filetype plugin indent on and syntax enable

"------------------------------------------------------------------------------
" Basic .vimrc settings:
"------------------------------------------------------------------------------

" Why cycle when you can fly?
set hidden
nnoremap gb :ls<CR>:b<Space>

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

" Airline
let g:airline_theme='zenburn'
let g:airline#extensions#tabline#enabled = 1
" Unsorted mess
set ai
set number
set nocompatible
set laststatus=2
set encoding=utf-8

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

" Gutentag stuff
let g:gutentags_enable = 1

" JavScript Dodads
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_ignore_case = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#enable_camel_case = 1
let g:deoplete#enable_refresh_always = 1
let g:deoplete#max_abbr_width = 0
let g:deoplete#max_menu_width = 0
let g:deoplete#omni#input_patterns = get(g:,'deoplete#omni#input_patterns',{})

let g:tern_request_timeout = 1
let g:tern_request_timeout = 6000
let g:tern#command = ["tern"]
let g:tern#arguments = ["--persistent"]
let g:neomake_javascript_enabled_makers = ['eslint']

" NeoMake
autocmd! BufWritePost * Neomake
let g:neomake_warning_sign = {
  \ 'text': '?',
  \ 'texthl': 'WarningMsg',
  \ }

let g:neomake_error_sign = {
  \ 'text': 'X',
  \ 'texthl': 'ErrorMsg',
  \ }
