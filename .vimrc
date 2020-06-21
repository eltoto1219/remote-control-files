" DEBUG PYTHON THREE:
" pip3 install --user pynvim
" :UpdateRemotePlugins
" pip3 install --user --upgrade pynvim
"or try setting to virtual env
"let g:python_host_prog = '/full/path/to/neovim2/bin/python'
"let g:python3_host_prog = '/full/path/to/neovim3/bin/python'"

" PLUGINS:
let g:ale_completion_enabled = 1
call plug#begin('~/.vim/plugged')
Plug 'editorconfig/editorconfig-vim'
Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'vim-utils/vim-man'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'lyuts/vim-rtags'
Plug 'mbbill/undotree'
Plug 'Yggdroot/indentLine'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dense-analysis/ale'
Plug 'ervandew/supertab'
Plug 'lervag/vimtex'
call plug#end()

" PLUGIN SETTING:
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']
let g:EditorConfig_disable_rules = ['trim_trailing_whitespace']

let g:airline#extensions#ale#enabled=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline_theme="alduin"

let g:ctrlp_user_command = ['.git', 'git --gitdir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_use_caching=0

let g:netrw_browse_g=2
let g:netrw_banner=0
let g:netrw_winsize=25

let g:ale_completion_enabled = 1
let g:ale_fixers = {'*': [], 'python': ['autopep8', 'yapf']}
let g:ale_fix_on_save = 1
let g:ale_linters = {'*': [], 'python': ['pylint', 'flake8']}
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 1
let g:ale_linters_explicit = 1
let b:ale_warn_about_trailing_whitespace =0
let g:ale_sign_column_always = 1
let g:ale_set_quickfix = 1
let g:ale_set_loclist = 0
let g:ale_set_highlights = 1
let g:ale_sign_error = '>'
let g:ale_sign_warning = '-'
if executable('rg')
    let g:rg_derive_root='true'
    let g:rg_highlight="true"
endif
":ALEInfo
":help ale-options
":help ale-integration-options
":help ale-go-to-definition
":help ale-symbol-search
":help ale-hover

" FUNCTIONS:
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

" STARTUP:
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()
autocmd FileType python setlocal completeopt-=preview
autocmd FileType python map <buffer><leader>e :w !python3<CR>

" GENERAL:
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
set statusline+=%*
set statusline+=%{FugitiveStatusline()}
set colorcolumn=80
set background=dark
colorscheme gruvbox
hi ColorColumn ctermbg=819
hi StatusLine ctermbg=819
let mapleader="w"
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

" INTRACTIVE MAPPINGS:
inoremap jk <Esc>
inoremap <C-a> $i<right>

" TERM MAPPINGS:
tnoremap jk <C-\><C-n>
tnoremap <leader>t <C-W>:silent q!<CR>
tnoremap qq <C-W>:silent q!<CR>
tnoremap <leader>k <C-W>:wincmd k<CR>
tnoremap <leader>= <C-W>:resize +5 <CR>
tnoremap <leader>- <C-W>:resize -5 <CR>
nnoremap <leader>t :silent term <CR> <C-W>:resize 5<CR>

" VIM MAPPINGS:
nnoremap qq :silent! q! <CR>
nnoremap <leader>q :silent w! <bar>:silent! q! <CR>
nnoremap <leader>a :norm A) <CR>

" BUFFER MAPPINGS:
nnoremap <C-n> :bp <enter>
nnoremap <C-m> :bn <enter>
nnoremap <leader>w :w <CR>

" WINDOW MAPPING:
nnoremap <leader>h :wincmd h <bar>:silent! set autoread <CR>
nnoremap <leader>j :wincmd j <bar>:silent! set autoread <CR>
nnoremap <leader>k :wincmd k <bar> :silent! set autoread <CR>
nnoremap <leader>l :wincmd l <bar> :silent! set autoread <CR>
nnoremap <leader>p :wincmd v <bar> :Ex <bar> :vertical resize 25<CR>
nnoremap <leader>= <C-W>:resize +5 <CR>
nnoremap <leader>- <C-W>:resize -5 <CR>

" PLUGIN MAPPING:
nnoremap <silent> <leader>g :ALEGoToDefinition<CR>
nnoremap <leader>u :UndotreeShow<CR>
let g:ctrlp_map = '<leader>s'
let g:ctrlp_cmd = 'CtrlP'

"<Leader>ri Symbol info
"<Leader>rj Follow location
"<Leader>rJ Follow declaration location
"<Leader>rS Follow location (open in horizontal split)
"<Leader>rV Follow location (open in vertical split)
"<Leader>rT Follow location open in a new tab
"<Leader>rp Jump to parent
"<Leader>rc Find subclasses
"<Leader>rC Find superclasses
"<Leader>rh List full class hierarchy
"<Leader>rf Find references
"<Leader>rF Call tree
"<Leader>rn Find references by name
"<Leader>rs Find symbols by name
"<Leader>rl List all available projects
"<Leader>rw Rename symbol under cursor
"<Leader>rv Find virtuals
"<Leader>rd Diagnose file for warnings and errors
"<Leader>rb Jump to previous location
