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
set mouse=

"syntax
syntax enable
syntax on

"colorscheme
colorscheme delek
hi Normal guibg=NONE ctermbg=NONE

"normal mode key mapping
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
nnoremap <C-a> $i<right>
tnoremap jh <C-\><C-n>
inoremap jh <Esc>
nnoremap <C-n> :bn <enter>
nnoremap <C-p> :bp <enter>

"mapping for nvim vs vim
if has('nvim')
    tnoremap <C-n> <C-\><C-n>:silent :bn <enter>
    tnoremap <C-p> <C-\><C-n>:silent :bp <enter>
    tnoremap <C-d> <C-\><C-n>:silent! e# <enter>
    tnoremap <C-t> <C-\><C-n>:NERDTreeToggle<CR>
    nnoremap <C-c> :silent! bufdo q! <enter>
else
    tnoremap <C-n> <C-W>:silent :bn <enter>
    tnoremap <C-p> <C-W>:silent :bp <enter>
    tnoremap <C-d> <C-W>:silent! e# <enter>
    tnoremap <C-t> <C-W>:NERDTreeToggle<CR>
    nnoremap <C-c> :b !/bin/bash <enter> <C-W>:silent! bd! <enter> :q! <enter>
endif

"mapping that depends on version
if exists(':terminal') == 0
    nnoremap <C-e> :w <enter> <bar> :shell <enter>
else
    "first open terminal buffer
    if has('nvim')
        exec "silent terminal"
        "term mapping for nvmim
        nnoremap <C-e> :w <enter>:b bash <enter> <C-\><C-n>:silent! set autoread <bar> startinsert <enter>
    else
        "term mapping for vim
        silent terminal ++curwin
        nnoremap <C-e> :w <enter>:b bash <enter> <C-W>:silent! set autoread <bar> startinsert <enter>
    endif
    "second come back to og buffer
    autocmd BufWinEnter,WinEnter term://* startinsert
    autocmd VimEnter,BufLeave term://* stopinsert
    silent! bp!
    "map del buffer function
    nnoremap <C-d> :silent! call DelBuffer() <CR>
endif

"on startup
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

"plugin manager"
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'ervandew/supertab'
Plug 'preservim/nerdtree'
Plug 'w0rp/ale'
Plug 'vim-python/python-syntax'
call plug#end()

"misc language/plugin settings
let python_highlight_all=1
let g:python_highlight_all = 1
let g:python_slow_sync = 0
let NERDTreeMapOpenInTab='\r'
let NERDTreeWinSize = 20
let g:ale_linters = {'python': ['flake8']}
let g:ale_fixers = {'*': [], 'python': ['black']}
let g:ale_fix_on_save = 1
nmap <C-t> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"functions
function! DelBuffer()
    if exists('t:NERDTreeBufName') && g:NERDTree.IsOpen() == 1 | NERDTreeToggle <CR> |
        q! | NERDTreeToggle <CR> |
    elseif exists('t:NERDTreeBufName') && g:NERDTree.IsOpen() == 0 |
        silent! q! |
    else | silent bd! |
    endif
    if line('$') == 1 && getline(1) == '' | silent! bufdo! q! | endif
endfunction

fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
