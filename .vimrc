"set python path if i am need to install python locally
"let g:python_host_prog = expand($HOME).'avmendoz/usr/local/bin/python3'
"let g:python3_host_prog = expand($HOME).'avmendoz/usr/local/bin/python3'
"plugin
call plug#begin('~/.vim/plugged')
Plug 'editorconfig/editorconfig-vim'
Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'ervandew/supertab'
Plug 'kien/ctrlp.vim'
"if has('python')
"Plug 'ycm-core/YouCompleteMe',  { 'do': './install.py --tern-completer' }
"Plug 'lyuts/vim-rtags'
"endif
Plug 'mbbill/undotree'
Plug 'Yggdroot/indentLine'
"Plug 'vim-python/python-syntax'
Plug 'vim-airline/vim-airline'
"Plug 'vim-syntastic/syntastic'
Plug 'dense-analysis/ale'
call plug#end()

"plugin settigs
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']
let g:EditorConfig_disable_rules = ['trim_trailing_whitespace']
let python_highlight_all=1
let g:python_highlight_all = 1
let g:python_slow_sync = 0
let g:airline#extensions#ale#enabled = 1
if executable('rg')
    let g:rf_derive_root='true'
endif
let g:ctrlp_user_command = ['.git', 'git --gitdir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_use_caching=0
let g:netrw_browse_g=2
let g:netrw_banner=0
let g:netrw_winsize=25
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_quiet_messages={'level':'warnings',"type": }
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_python_checkers = ['flake8']
"let g:syntastic_aggregate_errors = 0
let g:ale_fixers = {}
let g:ale_linters = {'*': [], 'python': ['python', 'flake8']}
let g:ale_linters_explicit = 1
let g:ale_set_highlights = 1
let g:ale_fix_on_save = 1
let b:ale_warn_about_trailing_whitespace =0
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
let g:ale_sign_column_always = 1
let g:ale_completion_enabled = 1


"funtions
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

"start up commands
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

"setting defaults files
set backspace=2
syntax enable
syntax on
set t_Co=256
set noerrorbells
set noinsertmode
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
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
set sel=inclusive
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set colorcolumn=80
highlight  ColorColumn ctermbg=0 guibg=black
colorscheme gruvbox
set background=dark


let mapleader="w"
tnoremap jk <C-\><C-n>
inoremap jk <Esc>
tnoremap <leader>k <C-\><C-n>:wincmd k<CR>
tnoremap <leader><Enter> <C-W>:silent! bn <CR>
inoremap <C-a> $i<right>
nnoremap <C-n> :bp <enter>
nnoremap <C-m> :bn <enter>
nnoremap <leader>h :wincmd h <bar>:silent! set autoread <CR>
nnoremap <leader>j :wincmd j <bar>:silent! set autoread <CR>
nnoremap <leader>k :wincmd k <bar> :silent! set autoread <CR>
nnoremap <leader>l :wincmd l <bar> :silent! set autoread <CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <Leader>p :wincmd v<bar> :Ex <bar> :vertical resize 25<CR>
nnoremap <Leader>t :silent term <CR> <C-W>:resize 5<CR>
tnoremap <Leader>t <C-W>:silent bd!<CR>
nnoremap <Leader>a :norm A) <CR>
nnoremap <leader>s :Rg<space>
nnoremap <silent><Leader>= :vertical resize +5 <CR>
nnoremap <silent><Leader>- :vertical resize -5 <CR>
nnoremap <leader>q :silent w! <bar>:silent! bufdo! q! <CR>
nnoremap <leader>w :w <CR>
nnoremap qq :silent! bufdo! q! <CR>
nnoremap <leader>ls :ls <CR>
autocmd FileType python map <buffer><leader>e :w !python3<CR>
nnoremap <silent> <Leader>g :ALEGoToDefinition<CR>
if has('python')
    nnoremap <silent> <Leader>f :YcmCompleter FixIt<CR>
endif

"depricated
"mapping that depends on version (note: nvim will always have term command)
"if exists(':terminal') == 0
"        nnoremap <C-e> :w <enter> <bar> :shell <enter>

"nnoremap <C-e> :w <enter>:b bash <enter> <C-W>:silent! set autoread <bar> startinsert <enter>
"open term buffer

"autocmd VimEnter,BufLeave term://* stopinsert
"silent! bp!
"add mappings
"nnoremap <C-d> :silent! call DelBuffer() <CR>
"
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
