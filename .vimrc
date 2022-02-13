" === IDK ===
syntax on
let g:python3_host_prog = '/usr/bin/python3.9'
" let g:python_host_prog = '/usr/bin/python2'

" === SET LEADER ===
let mapleader="w"

" === PRE-PLUGIN COMMANDS ===
let g:ale_completion_enabled=0
let g:ale_disable_lsp=1

" === PLUGINS ===
call plug#begin('~/.vim/plugged')
" Plug 'brooth/far.vim'
" Plug 'mileszs/ack.vim'
Plug 'wincent/ferret'
Plug 'alvan/vim-closetag'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'davidhalter/jedi-vim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'vim-python/python-syntax'
Plug 'dense-analysis/ale'
Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Yggdroot/indentLine'
Plug 'vim-airline/vim-airline'
Plug 'google/vimscript-language-server'
Plug 'vim-airline/vim-airline-themes'
Plug 'ervandew/supertab'
Plug 'tmhedberg/SimpylFold'
Plug 'tpope/vim-commentary'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
call plug#end()

" ACK/Ferret
let g:ackprg = 'rg --vimgrep --type-not sql --smart-case'
let g:ack_autoclose = 1
let g:ack_use_cword_for_empty_search = 1
cnoreabbrev Ack Ack!
nnoremap <leader>f :silent! Ack!<Space>
nnoremap <leader>r :silent! Acks<Space>/
let g:FerretHlsearch=1
let g:FerretAutojump=1


" === PLUGIN SETTING ===
if executable('vimscript-language-server')
  au User lsp_setup call lsp#register_server({
          \ 'name': 'vimscript-language-server',
          \ 'cmd': {server_info->WrapLspTee(['vimscript-language-server'])},
          \ 'whitelist': ['vim'],
          \ })
endif
if executable('pyls')
    " pip install python-language-server
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pyls',
        \ 'cmd': {server_info->['pyls']},
        \ 'allowlist': ['python'],
        \ })
endif

"JEFDI
let g:jedi#auto_close_doc=1
let g:jedi#auto_vim_configuration=0
let g:jedi#auto_initialization=1
let g:jedi#completions_enabled=0
let g:jedi#documentation_command = "K"
let g:jedi#squelch_py_warning = 1

"AIRLINE
let g:airline#extensions#coc#enabled=1
let g:airline#extensions#ale#enabled=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline_theme="alduin"
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

"CRTRLP
let g:ctrlp_user_command = 'find %s -type f'
let g:ctrlp_use_caching=0
let g:ctrlp_map = '<leader>s'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_by_filepath=0
let g:ctrlp_pregexp=0
let g:ctrlp_max_depth = 3
let g:ctrlp_default_input = 1

"ALE
let g:ale_completion_autoimport = 0
let g:ale_fixers={'python': ['autopep8', 'black', 'isort'], 'javascript': ['prettier', 'eslint']}
let g:ale_fix_on_save=1
let g:ale_fix_on_insert_leave=1
let g:ale_linter_aliases={'jsx': ['css', 'javascript']}
let g:ale_linters={'python': ['flake8'], 'jsx': ['html', 'css', 'javascript'], 'javascript': ['css', 'javascript']}
let g:ale_python_flake8_options = '--max-line-length=88'
let g:ale_python_flake8_options = '--ignore=E203,E741,E501'
":help ale-fix
"let g:ale_lint_on_text_changed='never'
let g:ale_lint_on_insert_leave=1
"let g:ale_linters_explicit=1
let b:ale_warn_about_trailing_whitespace=0
let g:ale_sign_column_always=1
let g:ale_set_quickfix=1
let g:ale_set_loclist=0
let g:ale_set_highlights=1
let g:ale_sign_error='!'
let g:ale_sign_warning='?'

"GRUVBOX
let g:gruvbox_invert_selection = '0'
let g:gruvbox_contrast_dark = 'hard'
let g:closetag_filenames = '*.html,*.xhtml,*.phtml, *jsx, *js'

"RIPGREP
if executable('rg')
    let g:rg_derive_root='true'
    let g:rg_highlight="true"
endif

" === TAGS ===
set tags=$HOME/.vimtags

"SUPERTAB
let g:SuperTabClosePreviewOnPopupClose=1
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabLongestHighlight=1
let g:SuperTabCompletionContexts = ['s:ContextDiscover', "s:ContextText"]
let g:SuperTabRetainCompletionDuration='insert'


" LSP
function! s:on_lsp_buffer_enabled() abort
  " setlocal omnifunc=lsp#complete
	nmap <buffer> gd <plug>(lsp-definition)
	nmap <buffer> <f2> <plug>(lsp-rename)
endfunction

augroup lsp_install
	au!
	autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

let g:lsp_enable_autocomplete=v:true
let g:lsp_semantic_enabled=0
let g:lsp_preview_keep_focus=0
let g:lsp_preview_autoclose=1
let g:lsp_completion_documentation_enabled=0
let g:lsp_preview_float=1
let g:lsp_diagnostics_enabled=0
let g:lsp_insert_text_enabled=1
let g:lsp_edit_text_enabled=1
let g:lsp_async_completion=1
let g:asyncomplete_auto_completeopt=0
let g:lsp_completion_resolve_timeout=10000
" autocmd FileType python setlocal completefunc=lsp#complete

" === SIGNCOLUM ===
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" === GENERAL ===
let skip_defaults_vim=1
set viminfo=""
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smartindent
set foldmethod=indent
set foldlevel=99
set backspace=2
set scrolloff=8
syntax enable
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
set encoding=utf-8
set incsearch
set hlsearch
set sel=exclusive
""set statusline^=%{coc#status()}
set statusline+=%{StatusDiagnostic()}
set statusline+=%{FugitiveStatusline()}
set background=dark
set shortmess+=c
colorscheme gruvbox
"" hi ColorColumn ctermbg=819
hi StatusLine ctermbg=819
let python_highlight_all = 1
" hi Terminal ctermbg=black ctermfg=white guibg=black guifg=blue
set colorcolumn=88
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set wildmenu
set wildmode=longest:full,full
set winminheight=0
set winminwidth=15
set completeopt=menuone,preview,noinsert
set complete=.,w,b,d

" === AUTO COMMANDS ===
"
" autocmd FileType python set omnifunc+=lsp#complete
autocmd FileType css set omnifunc+=csscomplete#CompleteCSS
autocmd FileType html set omnifunc+=htmlcomplete#CompleteTags
autocmd FileType javascript set omnifunc+=javascriptcomplete#CompleteJS
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()
" autocmd FileType python setlocal completeopt-=preview
"
augroup FiletypeGroup
    autocmd!
    au BufNewFile,BufRead *.jsx set filetype=javascript.jsx
augroup END

augroup ReduceNoise
    autocmd!
    autocmd BufEnter,BufNewFile,WinEnter,WinNew * :call ResizeSplits()
augroup END

autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab
autocmd Filetype json setlocal ts=2 sw=2 expandtab
autocmd Filetype yaml setlocal ts=2 sw=2 expandtab
" for js/coffee/jade/python files, 4 spaces
autocmd Filetype python setlocal ts=4 sw=4 sts=4 textwidth=119 expandtab autoindent fileformat=unix
autocmd Filetype javascript setlocal ts=4 sw=4 sts=4 textwidth=119 expandtab autoindent fileformat=unix
autocmd Filetype cofeescript setlocal ts=4 sw=4 sts=4 textwidth=119 expandtab autoindent fileformat=unix
autocmd Filetype jade setlocal ts=4 sw=4 sts=4 textwidth=119 expandtab autoindent fileformat=unix
autocmd BufLeave term://* startinsert
autocmd BufEnter term://* startinsert

function! Temp()
	if &buftype == "quickfix"
		echo ''
	else
		cclose
	endif
endfunction

augroup Hi
    autocmd!
    autocmd WinEnter,WinLeave * exec Temp()
augroup END

" === UNMAP THE FOLLOWING: ===
nnoremap <nowait>dk <Esc>
nnoremap <nowait>dj <Esc>

" === ADDING COMMAND ===
command -nargs=+ -complete=file Ex call ExecFile(<q-args>)

" === FIX SLOW MAPPINGS ===
iabbrev </ </<C-X><C-O>
nnoremap <nowait><leader>" ciw""<Esc>P<Esc>
nnoremap <nowait><leader>' ciw''<Esc>P<Esc>
nnoremap <nowait>d' di'hPl2x<Esc>
nnoremap <nowait>d" di"hpl2x<esc>
nnoremap <nowait><leader>n :call NavForward()<CR>
nnoremap <nowait><leader>p :call NavBackward()<CR>
nnoremap <nowait><leader>c za
nnoremap <nowait>dw dw
nnoremap <nowait>d2w d2w
nnoremap <nowait>d3w d3w
nnoremap <nowait>d4w d4w
nnoremap <nowait>yw yw
nnoremap <nowait>cw cw
nnoremap <nowait>gu g~wi<Esc>
nnoremap <nowait>gU g~Wi<Esc>

" === NORMAl MAPPINGS ===
autocmd FileType python map <leader>e :call ExecCurFile()<CR>
nnoremap <nowait>W" ciW""<Esc>P
nnoremap <nowait>W' ciW''<Esc>P
" map <leader>/ :call SearchDoc() <CR>
nnoremap <space> :set hlsearch!<CR>
nnoremap qq :silent call Quit() <CR>
nnoremap ww :silent! w! <CR>
nnoremap wq :silent call SaveQuit() <CR>
nnoremap <leader>t :w <bar> :call OpenTerm()<CR>
map <leader>/ :<C-u>execute "!pydoc3 " . expand("<cword>")<CR>

" === PLUGIN MAPPING ===
nmap <nowait><leader>[ <Plug>(ale_previous_wrap)
nmap <nowait><leader>] <Plug>(ale_next_wrap)

" === INTRACTIVE MAPPINGS ===
inoremap jk <Esc>l
inoremap <expr> <nowait>wj  pumvisible() ? "\<C-n>" : "wj"
inoremap <expr> <nowait>wk pumvisible() ? "\<C-p>" : "wk"
inoremap <expr> <nowait><CR> pumvisible() ? "\<CR><Esc>a" : "\<CR>"

" === TERM MAPPINGS ===
tnoremap jk <C-\><C-n>
tnoremap ; <C-w>:
tnoremap <leader>t <C-W>:b! #<CR>
tnoremap <leader>1 <C-W>:b1 #<CR>
tnoremap qq <C-W>:bw! <CR>
tnoremap <nowait><leader>l <C-W>:wincmd l<CR>
tnoremap <nowait><leader>h <C-W>:wincmd h<CR>
tnoremap <leader>n <C-w>:call TerminalForward()<CR>
tnoremap <leader>p <C-w>:call TerminalBackward()<CR>
nnoremap <leader>h :wincmd h <bar> :w <bar>:silent! set autoread <CR>
nnoremap <leader>j :wincmd j <bar> :w <bar>:silent! set autoread <CR>
nnoremap <leader>k :wincmd k <bar> :w <bar>:silent! set autoread <CR>
nnoremap <leader>l :wincmd l <bar> :w <bar>:silent! set autoread <CR>
nnoremap <leader>= <C-W>:resize +5 <CR>
nnoremap <leader>- <C-W>:resize -5 <CR>

" === FUNCTIONS ===
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

fun SearchDoc()
	call inputsave()
	let filename  = input("documentation search: ", "", "function")
	call inputrestore()
	execute "!pydoc3 " . filename
endfun

fun BufferForward()
	let curbuf = bufnr("%")
	let term_list = term_list()
	let bufcount = bufnr("$")
	if curbuf == bufcount
		bfirst
	else
		for i in getbufinfo()
			let somenum = i.bufnr
			let somename = i.name
			if index(term_list, somenum) != 0 && (somenum != "") && (curbuf < somenum) && (getbufvar('%', '&buftype') !=# 'scratch')
				execute ":buffer ". somenum
				break
			elseif somenum == bufcount
				bfirst
				break
			endif
		endfor
	endif
endfun

fun BufferBackward()
	let curbuf = bufnr("%")
	let term_list = term_list()
	let buffirst = getbufinfo()[0].bufnr
	if buffirst == curbuf
		let curbuf = 9999
	endif
	for i in reverse(getbufinfo())
		let somenum = i.bufnr
		let somename = i.name
		if (index(term_list, somenum) != 0 && (somenum != "")) && (curbuf > somenum) && (getbufvar('%', '&buftype') !=# 'scratch')
				execute ":buffer ". somenum
				break
		endif
	endfor
endfun

fun OpenTerm()
	if (getbufvar('%', '&buftype') !=# 'terminal') && (len(term_list()) > 0)
		for x in term_list()
			execute "b" . x
			break
		endfor
	else
			wincmd=
			term ++curwin
	endif
endfun

fun ExecCurFile()
	" exec 'term ++curwin'
	call OpenTerm()
	call term_sendkeys("%", "\clear" . "\<CR>")
	"add more file types here if neeeded
	call term_sendkeys("%", "\python3 " . expand('#:p'))
	call term_sendkeys("%",  "\<CR>")
endfun

fun ExecFile(filename)
	let argname = a:filename
	"add more file types here if neeeded
	if filereadable(argname)
		call OpenTerm()
		"exec 'term ++curwin'
		call term_sendkeys("%", "\clear" . "\<CR>")
		call term_sendkeys("%", "\python3 " . argname)
		call term_sendkeys("%",  "\<CR>")
	else
		echo "NOT A VALID FILE"
	endif
endfun

fun TerminalForward()
	let a = term_list()
	let c = 0
	if (len(a) != 1)
		for i in a
			let c = i
			if (bufnr(c) != bufnr("%"))
				execute ":buffer ". c
				break
			endif
		endfor
	endif
endfun

fun TerminalBackward()
	let a = reverse(term_list())
	let c = 0
	if (len(a) != 1)
		for i in a
			let c = i
			if (bufnr(c) != bufnr("%"))
				execute ":buffer ". c
				break
			endif
		endfor
	endif
endfun

" add no name condition for special quit
fun Quit()
	let buffers = filter(range(1, bufnr('$')), 'empty(bufname(v:val)) && bufwinnr(v:val) < 0')
  if !empty(buffers)
      exe 'silent q!'.join(buffers, ' ')
	endif
	if empty(bufname("%"))
		silent q!
	elseif (len(getbufinfo()) == 1)
		silent q!
		silent bw!
	else
		silent bw!
	endif
endfun

fun SaveQuit()
	let buffers = filter(range(1, bufnr('$')), 'empty(bufname(v:val)) && bufwinnr(v:val) < 0')
  if !empty(buffers)
      exe 'silent q!'.join(buffers, ' ')
	endif
	if empty(bufname("%"))
		silent q!
	elseif (len(getbufinfo()) == 1)
		silent wq!
	else
		silent w
		silent bw!
	endif
endfun

fun NavForward()
	if (getbufvar("%", "&buftype") ==# 'terminal')
		call TerminalForward()
	else
		call BufferForward()
	endif
endfun

fun NavBackward()
	if (getbufvar("%", "&buftype") ==# 'terminal')
		call TerminalBackward()
	else
		call BufferBackward()
	endif
endfun

function! ResizeSplits()
	"later we can make logic for other stuff like for specific splits
  wincmd=
	exe "vert resize " . (winwidth(0) * 1000)
endfunction


