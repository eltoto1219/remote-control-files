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
    tnoremap <C-d> <C-d><C-W>:bd!<enter>
    nnoremap <C-e> :silent !tmux new-session -A -s antonio <enter> :terminal ++curwin <enter>
endif

if has('nvim')
    nnoremap <C-e> :silent !tmux new-session -A -s antonio <enter> :terminal ++curwin <enter>
    nnoremap <C-e> :silent !clear <enter>:terminal <enter>
endif

tnoremap jh <C-\><C-n>
inoremap jh <esc> 

"plugin manager"
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'ervandew/supertab'
Plug 'yggdroot/indentline'
Plug 'vim-syntastic/syntastic'
Plug 'vim-airline/vim-airline'

"inoremap jh <esc> :w <enter> kj
inoremap jh <esc> 
colorscheme darkblue

call plug#end()

set laststatus=2
"let airline_statusline_ontop=1
hi Normal guibg=NONE ctermbg=NONE


