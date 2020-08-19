"SET LEADER:
let mapleader="w"

" PLUGINS:
let g:ale_completion_enabled = 0
let g:ale_disable_lsp=1
call plug#begin('~/.vim/plugged')
Plug 'davidhalter/jedi-vim'
Plug 'vim-python/python-syntax'
Plug 'dense-analysis/ale'
Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mbbill/undotree'
Plug 'Yggdroot/indentLine'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ervandew/supertab'
Plug 'lervag/vimtex'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tmhedberg/SimpylFold'
call plug#end()

" PLUGIN SETTING:
let g:tex_flavor = 'latex'
let g:coc_global_extensions = [ 'coc-json', 'coc-css', 'coc-html',  'coc-tsserver' , 'coc-python', 'coc-yaml', 'coc-snippets' ]
let g:coc_disable_startup_warning=1
let g:jedi#auto_vim_configuration = 0
let g:jedi#auto_initialization = 0
let g:jedi#completions_enabled = 0
let g:jedi#show_call_signatures = 0
let g:jedi#popup_on_dot = 0
let g:jedi#goto_command = '<leader>c'
let g:jedi#squelch_py_warning = 1
let g:jedi#completions_command = '<tab>'
let g:jedi#quikfix_window_height = 5
let g:jedi#max_doc_height=10
let g:jedi#winwidth=15
let g:airline#extensions#coc#enabled=1
let g:airline#extensions#ale#enabled=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline_theme="alduin"
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
let g:ctrlp_user_command = 'find %s -type f'
let g:ctrlp_use_caching=0
let g:ctrlp_map = '<leader>s'
let g:ctrlp_cmd = 'CtrlP'
let g:netrw_browse_g=2
let g:netrw_banner=0
let g:netrw_winsize=25
let g:ale_completion_autoimport = 1
let g:ale_fixers={'python': ['autopep8', 'yapf', 'black', 'isort'], 'javascript': ['prettier', 'eslint']}
let g:ale_fix_on_save=1
let g:ale_fix_on_insert_leave=1
let g:ale_linter_aliases={'jsx': ['css', 'javascript']}
let g:ale_linters={'python': ['flake8'], 'jsx': ['css', 'javascript'], 'javascript': ['css', 'javascript']}
":help ale-fix
let g:ale_lint_on_text_changed='never'
let g:ale_lint_on_insert_leave=1
let g:ale_linters_explicit=0
let b:ale_warn_about_trailing_whitespace=0
let g:ale_sign_column_always=1
let g:ale_set_quickfix=1
let g:ale_set_loclist=0
let g:ale_set_highlights=1
let g:ale_sign_error='!'
let g:ale_sign_warning='?'
let g:gruvbox_invert_selection = '0'
let g:gruvbox_contrast_dark = 'hard'
if executable('rg')
    let g:rg_derive_root='true'
    let g:rg_highlight="true"
endif

" set tags:
set tags=$HOME/.vimtags

" SIGNCOLUM:
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" FUNCTIONS:
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

fun ExecFile()
	call inputsave()
	let filename  = input("file to excecute: ")
	call inputrestore()
	if filereadable(filename)
		execute 'rightbelow vert ter python3' filename
		vertical resize 45
	else
		echo "NOT A VALID FILE"
	endif
endfun

fun SearchDoc()
call inputsave()
	let filename  = input("documentation search: ")
	call inputrestore()
	execute "!pydoc3 " . filename
endfun

" GENERAL:
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smartindent
set foldmethod=indent
set foldlevel=99
set backspace=2
syntax enable
syntax on
set t_Co=256
set noerrorbells
set noinsertmode
set nu rnu
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
set hlsearch
set sel=exclusive
set statusline^=%{coc#status()}
set statusline+=%{StatusDiagnostic()}
set statusline+=%{FugitiveStatusline()}
set colorcolumn=88
set background=dark
colorscheme gruvbox
hi ColorColumn ctermbg=819
hi StatusLine ctermbg=819
let python_highlight_all = 1
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

" STARTUP:
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()
autocmd FileType python setlocal completeopt-=preview
autocmd FileType python map <buffer><leader>e :w !python3<CR>
augroup FiletypeGroup
    autocmd!
    au BufNewFile,BufRead *.jsx set filetype=javascript.jsx
augroup END
autocmd FileType python set tabstop=4
autocmd FileType python set softtabstop=4
autocmd FileType python set shiftwidth=4
autocmd FileType python set textwidth=79
autocmd FileType python set expandtab
autocmd FileType python set autoindent
autocmd FileType python set fileformat=unix
autocmd Filetype python nnoremap <buffer> <leader>e :w<CR>:vert ter python3 "%"<CR>

" NORMAl MAPPINGS:
nnoremap qq :silent! q! <CR>
nnoremap ww :silent! w! <CR>
nnoremap wq :silent! wq! <CR>
nnoremap dw :norm! diwh <CR>
nnoremap <CR> za
nnoremap <Leader>" ciw""<Esc>P
nnoremap <Leader>' ciw''<Esc>P
nnoremap <Leader>"" ciW""<Esc>P
nnoremap <Leader>'' ciW''<Esc>P
nnoremap <Leader>d" ci""<Esc>P
nnoremap <Leader>d' ci''<Esc>P
nnoremap <Leader>d"" ciW""<Esc>P
nnoremap <Leader>d'' ciW''<Esc>P
nnoremap <Leader>[ :norm! {<CR>
nnoremap <Leader>] :norm! }<CR>
nnoremap <leader>. :call ExecFile() <CR>
nnoremap <leader>/ :call SearchDoc() <CR>

" INTRACTIVE MAPPINGS:
inoremap jk <Esc>

" TERM MAPPINGS:
tnoremap jk <C-\><C-n>
tnoremap <leader>t <C-W>:silent q!<CR>
tnoremap qq <C-W>:silent q!<CR>
tnoremap <leader>k <C-W>:wincmd k<CR>
tnoremap <leader>= <C-W>:resize +5 <CR>
tnoremap <leader>- <C-W>:resize -5 <CR>
tnoremap <leader>v= <C-W>:vert resize +5 <CR>
tnoremap <leader>v- <C-W>:vert resize -5 <CR>
nnoremap <leader>t :silent term <CR> <C-W>:resize 5<CR>
nnoremap <space> :set hlsearch!<CR>

" BUFFER MAPPINGS:
nnoremap wu <C-u>
nnoremap wd <C-d>
nnoremap bp :bp!<CR>
nnoremap bn :bn!<CR>
nnoremap <leader>? :<C-u>execute "!pydoc3 " . expand("<cword>")<CR>

" WINDOW MAPPING:
nnoremap <leader>h :wincmd h <bar>:silent! set autoread <CR>
nnoremap <leader>j :wincmd j <bar>:silent! set autoread <CR>
nnoremap <leader>k :wincmd k <bar> :silent! set autoread <CR>
nnoremap <leader>l :wincmd l <bar> :silent! set autoread <CR>
nnoremap <leader>= <C-W>:resize +5 <CR>
nnoremap <leader>- <C-W>:resize -5 <CR>

" PLUGIN MAPPING:
nmap <silent> gc <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap <leader>rr :CocSearch <C-R>=expand("<cword>")<CR><CR>
nmap <leader>pe <Plug>(ale_previous_wrap)
nmap <leader>ne <Plug>(ale_next_wrap)

" MISC PLUGIN:
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif
