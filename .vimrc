colorscheme Twilight
syntax on
syntax enable
" 4 space tab
set tabstop=8                   " compatibility
set softtabstop=4               " 4 spaces = <TAB>
set shiftwidth=4                " used for indenting
set expandtab                   " insert spaces, not tabs
set autoindent
set smarttab                    " use shiftwidth for beginning tabs
" other
set autoread                    " auto read files edited elsewhere
set hid                         " switch buffers without saving
set fileformat=unix
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
