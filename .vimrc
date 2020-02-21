"general settings "
set noinsertmode
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
inoremap jh <Esc> 

"mapping for vims
if !has('nvim')
    tnoremap <C-d> <C-W>:silent! bd! <enter>
    "move next/prev buffer
    nnoremap <C-n> :bn <enter>
    nnoremap <C-x> :bp <enter>
    tnoremap <C-n> <C-W>:silent :bn <enter>
    tnoremap <C-x> <C-W>:silent :bp <enter>
    "jump to term buffer
    nnoremap <C-e> :w <enter>:b bash <enter> <C-W>:silent! set autoread <enter>
    "exit out of all buffers and quit vim
    nnoremap <C-c> :b bash <enter> <C-W>:silent! bd! <enter> :q <enter>
    tnoremap <C-t> <C-W>:NERDTreeToggle<CR>
endif

"mapping for nvim
if has('nvim')
    tnoremap <C-d> <C-\><C-n>:silent! bd! <enter>
    "tnoremap <silent><C-D> <C-D><C-\><C-N>ZQ
    "move next/prev buffer
    nnoremap <C-n> :bn <enter>
    nnoremap <C-x> :bp <enter>
    tnoremap <C-n> <C-\><C-n>:silent :bn <enter>
    tnoremap <C-t> <C-\><C-n>:NERDTreeToggle<CR>
    tnoremap <C-x> <C-\><C-n>:silent :bp <enter>
    "jump to term buffer
    nnoremap <C-e> :w <enter>:b bash <enter> <C-\><C-n>:silent! set autoread <bar> startinsert <enter>
    "exit out of all buffers and quit vim
    nnoremap <C-c> :silent! bufdo q! <enter> |
endif

"plugin manager"
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'ervandew/supertab'
Plug 'yggdroot/indentline'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
let NERDTreeMapOpenInTab='\r'
let NERDTreeWinSize = 20
call plug#end()
"open terminal buffer and then go back to original file
if !has('nvim')
    silent terminal ++curwin
    "silent bp
endif
if has('nvim')
    exec "silent terminal"
endif
"functions
"other"
set mouse=
nmap <C-t> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd BufWinEnter,WinEnter term://* startinsert
autocmd VimEnter,BufLeave term://* stopinsert
silent! bp!

function! DelBuffer()
    if exists('t:NERDTreeBufName') && g:NERDTree.IsOpen() == 1 | NERDTreeToggle <CR> | 
        silent! bd! | NERDTreeToggle <CR> | 
    elseif exists('t:NERDTreeBufName') && g:NERDTree.IsOpen() == 0 | 
        silent! q! |
    else | silent bd! | 
    endif 
    if line('$') == 1 && getline(1) == '' | silent! bufdo! q! | endif
endfunction

nnoremap <C-d> :silent! call DelBuffer() <CR>
