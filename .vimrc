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
    "move next/prev buffer
    nnoremap <C-n> :bn <enter>
    tnoremap <C-n> <C-W>:silent :bn <enter>
    nnoremap <C-p> :bp <enter>
    tnoremap <C-p> <C-W>:silent :bp <enter>

    tnoremap <C-d> <C-W>:silent! e# <enter>
    nnoremap <C-e> :w <enter>:b bash <enter> <C-W>:silent! set autoread <bar> startinsert <enter>

    tnoremap <C-t> <C-W>:NERDTreeToggle<CR>
    nnoremap <C-c> :b bash <enter> <C-W>:silent! bd! <enter> :q <enter>
endif

"mapping for nvim
if has('nvim')
    tnoremap <C-n> <C-\><C-n>:silent :bn <enter>
    nnoremap <C-n> :bn <enter>
    nnoremap <C-p> :bp <enter>
    tnoremap <C-p> <C-\><C-n>:silent :bp <enter>

    tnoremap <C-d> <C-\><C-n>:silent! e# <enter>
    nnoremap <C-e> :w <enter>:b bash <enter> <C-\><C-n>:silent! set autoread <bar> startinsert <enter>
    nnoremap <C-c> :silent! bufdo q! <enter> |
    tnoremap <C-t> <C-\><C-n>:NERDTreeToggle<CR>
endif

"plugin manager"
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'ervandew/supertab'
"Plug 'yggdroot/indentline'
"Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'w0rp/ale'
"Plug 'psf/black'

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
"autocmd BufWritePre *.py execute ':Black'
silent! bp!

"let g:black_virtualenv
let g:ale_linters = {'python': ['flake8']}
let g:ale_fixers = {'*': [], 'python': ['black']}
let g:ale_fix_on_save = 1


function! DelBuffer()
    if exists('t:NERDTreeBufName') && g:NERDTree.IsOpen() == 1 | NERDTreeToggle <CR> | 
        q! | NERDTreeToggle <CR> | 
    elseif exists('t:NERDTreeBufName') && g:NERDTree.IsOpen() == 0 | 
        silent! q! |
    else | silent bd! | 
    endif 
    if line('$') == 1 && getline(1) == '' | silent! bufdo! q! | endif
endfunction

nnoremap <C-d> :silent! call DelBuffer() <CR>
