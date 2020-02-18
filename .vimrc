"general settings 
set hidden
set hlsearch 
set smartcase
set encoding=utf-8
set number
set cursorline
set splitright
set splitbelow
set clipboard=unnamedplus
set t_Co=256
set tabstop=4
set shiftwidth=4
set expandtab

"syntax
syntax enable
syntax on
let python_highlight_all=1

"colorscheme
colorscheme darkblue
hi Normal guibg=NONE ctermbg=NONE

"normal mode mapping
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
nnoremap <C-a> $i<right>
tnoremap jh <C-\><C-n>
inoremap jh <esc> 

"mapping for vims
if !has('nvim')
    nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
    tnoremap <C-d> <C-W>:silent! bd! <enter>
    "move next/prev buffer
    nnoremap <C-n> :bn <enter>
    nnoremap <C-x> :bp <enter>
    tnoremap <C-n> <C-W>:silent :bn <enter>
    tnoremap <C-x> <C-W>:silent :bp <enter>
    "nnoremap <C-e> :silent !tmux new-session -A -s antonio <enter> :terminal ++curwin <enter>
    "jump to term buffer
    nnoremap <C-e> :w <enter> :b bash <enter> <C-W>:silent! set autoread <enter>
    "exit out of all buffers and quit vim
    nnoremap <C-c> :b bash <enter> <C-W>:silent! bd! <enter> :q <enter>
endif

"mapping for nvim
if has('nvim')
    nnoremap <C-e> :silent !tmux new-session -A -s antonio <enter> :terminal ++curwin <enter>
endif

"plugin manager"
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'ervandew/supertab'
Plug 'yggdroot/indentline'
Plug 'vim-airline/vim-airline'
call plug#end()

"open terminal buffer and then go back to original file
silent terminal ++curwin 
silent bp
