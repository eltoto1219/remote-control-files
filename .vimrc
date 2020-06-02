"let g:python3_host_prog = '/usr/local/lib/python3.6.6'
silent! set %
"general settings "
syntax enable
syntax on
set t_Co=256
set noerrorbells
set noinsertmode
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
"set smartcase
set nu
set nowrap
set hidden
set cursorline
set splitright
set splitbelow
set noswapfile
set nobackup
set undofile
set undodir=~/.vim/undodir
set mouse=
set clipboard=unnamedplus
set encoding=utf-8
set incsearch
set colorcolumn=80
highlight  ColorColumn ctermbg=0 guibg=lightgrey

"normal mode key mapping
"nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
if has('nvim')
    tnoremap <C-d> <C-\><C-n>:silent! e# <enter>
    nnoremap <C-e> :w <enter>:b bash <enter> <C-\><C-n>:silent! set autoread <bar> startinsert <enter>
    "start term
    exec "silent terminal"
endif

"mapping that depends on version (note: nvim will always have term command)
if exists(':terminal') == 0
    nnoremap <C-e> :w <enter> <bar> :shell <enter>
else
    "commands for terminal regardless of n/vim
    if !has('nvim')
        "term mapping for vim
        tnoremap <C-d> <C-W>:silent! e# <enter>
        nnoremap <C-e> :w <enter>:b bash <enter> <C-W>:silent! set autoread <bar> startinsert <enter>
        "open term buffer
        silent terminal ++curwin
    endif
    "second come back to og buffer (n/vim)
    autocmd BufWinEnter,WinEnter term://* startinsert
    autocmd VimEnter,BufLeave term://* stopinsert
    silent! bp!
    "add mappings
    nnoremap <C-d> :silent! call DelBuffer() <CR>
endif

"on startup
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

"plugin manager"
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
"Plug 'tpope/vim-sensible'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'ervandew/supertab'
Plug 'kien/ctrlp.vim'
if has('python')
    Plug 'ycm-core/YouCompleteMe',  { 'do': './install.py --tern-completer' }
    Plug 'lyuts/vim-rtags'
endif
Plug 'vim-python/python-syntax'
Plug 'mbbill/undotree'
Plug 'Yggdroot/indentLine'
call plug#end()

colorscheme gruvbox
set background=dark

"misc language/plugin settings
let python_highlight_all=1
let g:python_highlight_all = 1
let g:python_slow_sync = 0
let g:ale_fixers = {'*': [], 'python': ['black']}
let g:ale_fix_on_save = 1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
if executable('rg')
    let g:rf_derive_root='true'
endif

let g:ctrlp_user_command = ['.git', 'git --gitdir=%s/.git ls-files -oc --exclude-standard']
let g:netrw_browse_g=2
let g:netrw_banner=0
let g:netrw_winsize=25
let g:ctrlp_use_caching=0

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



let mapleader="jk"
tnoremap <leader> <C-\><C-n>
tnoremap <leader>k <C-\><C-n>:wincmd k<CR>
tnoremap <leader><Enter> <C-W>:silent! bn <CR>
inoremap <C-a> $i<right>
inoremap jk <Esc>
nnoremap <C-n> :bp <enter>
nnoremap <C-m> :bn <enter>

nnoremap <leader>h :wincmd h<CR>  :silent! set autoread <enter>
nnoremap <leader>j :wincmd j<CR>  :silent! set autoread <enter>
nnoremap <leader>k :wincmd k<CR> :silent! set autoread <enter>
nnoremap <leader>l :wincmd l<CR>  :silent! set autoread <enter>

nnoremap <leader>u :UndotreeShow<CR>
nnoremap <Leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 25<CR>
nnoremap <Leader>t :silent term <enter> <C-W>:resize 5<CR>
nnoremap <leader>ps :Rg<space>
nnoremap <silent> <Leader>+ :vertical resize +5 <CR>
nnoremap <silent> <Leader>- :vertical resize -5 <CR>
nnoremap <leader>q :silent! bufdo! q! <CR>
nnoremap <leader>w :w <CR>
if has('python')
    nnoremap <silent> <Leader>gd :YcmCompleter GoTo<CR>
    nnoremap <silent> <Leader>gf :YcmCompleter FixIt<CR>
    nnoremap <silent> <Leader>gf :YcmCompleter FixIt<CR>
endif


