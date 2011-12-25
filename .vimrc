set nocompatible
syntax enable
set encoding=utf-8
set showcmd
" Vundle time!!!
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'majutsushi/tagbar'
Bundle 'tpope/vim-fugitive'

filetype plugin indent on
" Whitespace
set nowrap
set tabstop=8                   " compatibility
set softtabstop=4               " 4 spaces = <TAB>
set shiftwidth=4                " used for indenting
set expandtab                   " insert spaces, not tabs
set autoindent
set smarttab                    " use shiftwidth for beginning tabs
set backspace=indent,eol,start  " backspace through everything
" Search
set hlsearch                    " highlight matches
set incsearch                   " incremental search
set ignorecase
set smartcase                   " ignore case unless capital letters
set autoread                    " auto read files edited elsewhere
set hid                         " switch buffers without saving
set fileformat=unix
colorscheme molokai
" Gui options
if has('gui_running')
    set lines=60 columns=150
    if has('win32')
        set guifont=Dina:h9:cANSI
    elseif has('unix')
        let s:uname = system('uname')
        if s:uname == 'Darwin\n'
            " OS X
            set guifont=Andale Mono:h11
        else
            " Linux
            set guifont=Dejavu\ Sans\ Mono\ 8
            set lines=40 columns=120
        endif
    endif
endif
