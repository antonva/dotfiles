" Basic VIM conf
" Author: Anton Vilhelm Ásgeirsson
" Year: 2014
" License: MIT
"------------------------------------------------------------------------------
" NeoBundle setup:
"------------------------------------------------------------------------------
if !1 | finish | endif

if has('vim_starting')
    set nocompatible               " Be IMproved.

    " Required:
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Extra bundles go here:

" GitHub
" Hail TPope
NeoBundle 'tpope/vim-fugitive'     " Git integration
NeoBundle 'tpope/vim-dispatch'     " Make tools
NeoBundle 'tpope/vim-surround'     " Surround selections with tags or []/{}
NeoBundle 'tpope/vim-sleuth'       " Automatically handle tabstop and shiftwidth
NeoBundle 'scrooloose/syntastic'   " Syntax highlighting and debugging
NeoBundle 'scrooloose/nerdtree'    " Directory tree window
NeoBundle 'flazz/vim-colorschemes' " A selection of colorschemes.

" VimScripts
NeoBundle 'L9'                     " All sorts of crazy, FuzzyFind dep.
NeoBundle 'FuzzyFinder'            " Find the fuzzy.

call neobundle#end()

" Required:
filetype plugin indent on

NeoBundleCheck
"------------------------------------------------------------------------------
" Basic .vimrc settings:
"------------------------------------------------------------------------------

" Turn on syntax highlighting
syntax on

" Use Smyck colorscheme
colorscheme smyck

" Highlight cursor line horizontally and vertically
set cursorline
set cursorcolumn

" NERDTree settings.
let g:NERDTreeWinPos = "right"
nmap <C-n> :NERDTreeToggle<CR>

" Toggle pastemode"
set pastetoggle=<leader>p


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
