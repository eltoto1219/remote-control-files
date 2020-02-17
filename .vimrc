set hidden
set hlsearch 
set smartcase
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
set encoding=utf-8
set number
set cursorline
set splitright
set splitbelow
set clipboard=unnamedplus
syntax enable
let python_highlight_all=1
syntax on
set t_Co=256
set tabstop=4
set shiftwidth=4
set expandtab
nnoremap <C-a> $i<right>

if !has('nvim')
    nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
    tnoremap <C-d> <C-W>:silent! bd! <enter>
    nnoremap <C-d> <C-W>:silent! bd <enter>
    nnoremap <C-n> :bn <enter>
    tnoremap <C-x> <C-W>:silent :bp <enter>
    "nnoremap <C-e> :silent !tmux new-session -A -s antonio <enter> :terminal ++curwin <enter>
    "nnoremap <C-e> :silent | tabedit | terminal ++curwin 
    nnoremap <C-e> :b bash <enter> <C-W>:silent! set autoread <enter>
endif

if has('nvim')
    nnoremap <C-e> :silent !tmux new-session -A -s antonio <enter> :terminal ++curwin <enter>
endif

tnoremap jh <C-\><C-n>
inoremap jh <esc> 

"plugin manager"
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'ervandew/supertab'
Plug 'yggdroot/indentline'
Plug 'vim-airline/vim-airline'

"inoremap jh <esc> :w <enter> kj
inoremap jh <esc> 
colorscheme darkblue

call plug#end()

hi Normal guibg=NONE ctermbg=NONE
set laststatus=2
"let airline_statusline_ontop=1
silent terminal ++curwin 
silent bp

