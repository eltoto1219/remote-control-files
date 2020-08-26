"SET LEADER:
let mapleader="w"

"' PLUGINS:
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
let g:coc_global_extensions = ['coc-tsserver' , 'coc-python', 'coc-yaml', 'coc-json', 'coc-css', 'coc-html']
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

" TAGS:
set tags=$HOME/.vimtags

" SIGNCOLUM:
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" GENERAL:
let skip_defaults_vim=1
set viminfo=""
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
"set statusline^=%{coc#status()}
set statusline+=%{StatusDiagnostic()}
set statusline+=%{FugitiveStatusline()}
set colorcolumn=88
set background=dark
colorscheme gruvbox
hi ColorColumn ctermbg=819
hi StatusLine ctermbg=819
let python_highlight_all = 1
hi Terminal ctermbg=black ctermfg=white guibg=black guifg=blue
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set wildmenu
set wildmode=longest:full,full


" AUTO Commands
autocmd FileType css set omnifunc+=csscomplete#CompleteCSS
autocmd FileType html set omnifunc+=htmlcomplete#CompleteTags
autocmd FileType javascript set omnifunc+=javascriptcomplete#CompleteJS
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()
autocmd FileType python setlocal completeopt-=preview
augroup FiletypeGroup
    autocmd!
    au BufNewFile,BufRead *.jsx set filetype=javascript.jsx
augroup END
augroup ReduceNoise
    autocmd!
    autocmd BufEnter,BufNewFile,WinEnter,WinNew * :call ResizeSplits()
augroup END
autocmd FileType python set tabstop=4
autocmd FileType python set softtabstop=4
autocmd FileType python set shiftwidth=4
autocmd FileType python set textwidth=79
autocmd FileType python set expandtab
autocmd FileType python set autoindent
autocmd FileType python set fileformat=unix
autocmd BufLeave term://* startinsert
autocmd BufEnter term://* startinsert

" UNMAP THE FOLLOWING:
nnoremap <nowait>dk <Esc>
nnoremap <nowait>dj <Esc>
" ADDING COMMAND:
command -nargs=+ -complete=file Ex call ExecFile(<q-args>)
" FIX SLOW MAPPINGS:
nnoremap <nowait><leader>" ciw""<Esc>P<Esc>
nnoremap <nowait><leader>' ciw''<Esc>P<Esc>
nnoremap <nowait>d' di'hPl2x<Esc>
nnoremap <nowait>d" di"hpl2x<esc>
nnoremap <nowait><leader>n :call NavForward()<CR>
nnoremap <nowait><leader>p :call NavBackward()<CR>
nnoremap <nowait><leader>f za
nnoremap <nowait>dw dw
nnoremap <nowait>yw yw
nnoremap <nowait>cw cw
nnoremap <nowait>gu g~wi<Esc>
nnoremap <nowait>gU g~Wi<Esc>
" NORMAl MAPPINGS:
autocmd FileType python map <leader>e :call ExecCurFile()<CR>
nnoremap <nowait>W" ciW""<Esc>P
nnoremap <nowait>W' ciW''<Esc>P
nnoremap <leader>/ :call SearchDoc() <CR>
nnoremap <space> :set hlsearch!<CR>
nnoremap qq :call Quit() <CR>
nnoremap ww :silent! w! <CR>
nnoremap wq :call SaveQuit()<CR>
nnoremap <leader>t :call OpenTerm()<CR>
nnoremap <leader>? :<C-u>execute "!pydoc3 " . expand("<cword>")<CR>
" PLUGIN MAPPING:
nmap <silent> gc <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gr <Plug>(coc-references)
nnoremap <leader>rr :CocSearch <C-R>=expand("<cword>")<CR><CR>
nmap <nowait><leader>, <Plug>(ale_previous_wrap)
nmap <nowait><leader>; <Plug>(ale_next_wrap)


" INTRACTIVE MAPPINGS:
inoremap jk <Esc>

" TERM MAPPINGS:
tnoremap jk <C-\><C-n>
tnoremap <leader>t <C-W>:close!<CR>
tnoremap qq <C-D><CR>
tnoremap <nowait><leader>k <C-W>:wincmd k<CR>
tnoremap <nowait><leader>j <C-W>:wincmd j<CR>
tnoremap <nowait><leader>l <C-W>:wincmd l<CR>
tnoremap <nowait><leader>h <C-W>:wincmd h<CR>
tnoremap <leader>n <C-w>:call TerminalForward()<CR>
tnoremap <leader>p <C-w>:call TerminalBackward()<CR>
nnoremap <leader>h :wincmd h <bar>:silent! set autoread <CR>
nnoremap <leader>j :wincmd j <bar>:silent! set autoread <CR>
nnoremap <leader>k :wincmd k <bar> :silent! set autoread <CR>
nnoremap <leader>l :wincmd l <bar> :silent! set autoread <CR>
nnoremap <leader>= <C-W>:resize +5 <CR>
nnoremap <leader>- <C-W>:resize -5 <CR>

" MISC PLUGIN:
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

" FUNCTIONS:

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
	let curbuf = bufnr(bufname(bufnr("%")))
	let bufnum = bufnr(bufname(bufnr("%")))
	let bufcount = bufnr("$")
	if (bufcount != 1) && (getbufvar("%", "&buftype") !=# 'terminal')
		if (bufnum == bufcount) && (bufcount > 1)
			let bufnum = bufnr(bufname(1))
		else
			let bufnum = bufnum + 1
		endif
		while(1 == 1)
			if (bufnum == curbuf)
				break
			elseif bufexists(bufnum) && (getbufvar(bufnum, '&buftype') !=# 'terminal')
				execute ":buffer ". bufnum
				break
			else
				let bufnum = bufnum + 1
			endif
			if (bufnum > bufcount+1)
				let bufnum = 1
			endif
		endwhile
	endif
endfun

fun BufferBackward()
	let curbuf = bufnr(bufname(bufnr("%")))
	let bufnum = bufnr(bufname(bufnr("%")))
	let bufcount = bufnr("$")
	if (bufcount > 1) && (getbufvar("%", "&buftype") !=# 'terminal')
		let bufnum = bufnum -1
		while(1 == 1)
			if (bufnum == curbuf) && (bufnr(curbuf) != bufnr(bufcount))
				break
			elseif bufexists(bufnum) && (getbufvar(bufnum, '&buftype') !=# 'terminal') && (bufnum > 0)
				execute ":buffer ". bufnum
				break
			else
				let bufnum = bufnum - 1
			endif
			if (bufnum < 0)
				let bufnum = bufcount
			endif
		endwhile
	endif
endfun

fun OpenTerm()
	if (getbufvar('%', '&buftype') !=# 'terminal')
		let start_var = bufnr(bufname(0))
		let bufcount = bufnr(bufname(bufnr("$")))
		let loopend = bufcount + 1
		while(1 == 1)
			if  bufexists(start_var) && (getbufvar(start_var, '&buftype') ==# 'terminal')
				execute "vert sb" . start_var
				wincmd=
				exe "vert resize " . (winwidth(0) * 3/2)
				break
			endif
			if (start_var == loopend)
					execute "vert term"
					wincmd=
					exe "vert resize " . (winwidth(0) * 3/2)
				break
			endif
			let start_var = start_var + 1
		endwhile
	else
		close
	endif
endfun

fun ExecCurFile()
	exec 'vert term'
	call term_sendkeys("%", "\clear" . "\<CR>")
	"add more file types here if neeeded
	call term_sendkeys("%", "\python3 " . expand('#:p'))
	call term_sendkeys("%",  "\<CR>")
endfun

fun ExecFile(filename)
	let argname = a:filename
	"add more file types here if neeeded
	if filereadable(argname)
		exec 'vert term'
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
	if (len(getbufinfo()) == 1) && len(term_list()) == 0
		q!
	elseif (getbufvar("%", "&buftype") ==# 'terminal') && len(getbufinfo()) > 1
		bw!
	elseif (len(getbufinfo()) == 1)
		q!
	else
		bw!
	endif
endfun

fun SaveQuit()
	if (len(getbufinfo()) == 1) && len(term_list()) == 0
		wq!
	elseif (getbufvar("%", "&buftype") ==# 'terminal') && len(getbufinfo()) > 1
		w
		bw!
	elseif (len(getbufinfo()) == 1)
		w
		q!
	else
		w
		bw!
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
	exe "vert resize " . (winwidth(0) * 3/2)
endfunction

