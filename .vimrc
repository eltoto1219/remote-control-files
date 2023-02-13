" TODO:
" 1. setup undo tree
" 2. setup debugger
" 3. learn and setup git integration
"
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

fun! OpenTerm()
	let termlist = term_list()
	" let termlist = []
	" for i in getbufinfo()
	" 		if stridx(i.name, "!/bin/bash") != -1
	" 				call add(termlist, i.bufnr)
	" 		endif
	" endfor
	"let termlist = uniq(map(filter(getwininfo(), 'v:val.terminal'), 'v:val.bufnr'))
	let curbuf = bufnr("%")
	let isinlist = !(index(termlist, curbuf) == -1)
	if isinlist
			execute "b! #"
	elseif len(termlist) > 0
	for x in termlist
		execute "b" . x
		break
	endfor
	else
		wincmd=
		term ++curwin
	endif
endfun

function! BufferForward()
	let curbuf = bufnr("%")
  let bufinfolist = getbufinfo()
	let bufcount = bufnr("$")
  let buffirst = bufinfolist[0].bufnr

  for i in getbufinfo()
		let somenum = i.bufnr
		let somename = i.name
		let islisted = i.listed
		let isloaded= i.loaded
		let cond1 = somenum != ""
		let cond2 = curbuf < somenum
		"cond4 = .getbufvar(somenum, '&buftype') ~= 'scratch' | 'terminal'
		let cond3 = islisted == 1
		let cond4 = isloaded == 1
		let cond5 = somename != ""
		let cond6 = stridx(i.name, "!/bin/bash") == -1

		if cond1 && cond2 && cond3 && cond5 && cond6
			echo '--> N: ' . somenum
			execute ":silent b " . somenum
			break
		elseif somenum == bufcount
			echo '--> N: ' . buffirst
			execute ':silent bfirst'
			break
		endif

	endfor
endfun

function! BufferBackward()
	" echo 'here'

	let curbuf = bufnr("%")
	let buffirst = getbufinfo()[0].bufnr

  for i in reverse(getbufinfo())
			let somenum = i['bufnr']
			let somename = i['name']
			let islisted = i['listed']
			let isloaded= i['loaded']
			let cond1 = isloaded == 1
			let cond2 = somenum != ""
			let cond3 = curbuf > somenum
			"cond4 = .getbufvar(somenum, '&buftype') ~= 'scratch' | 'terminal'
			let cond4 = islisted == 1
			let cond5 = somename != ""
			let cond6 = stridx(i.name, "!/bin/bash") == -1


			if curbuf == buffirst  && cond2 && cond5 && cond5 && cond6
					echo '<-- N: ' . somenum
					exe ":silent buffer " . somenum
					break
			elseif cond2 && cond4 && cond3 && cond5 && cond6
					" echo 'heree'
					echo '<-- N: ' . somenum
					exe ":silent buffer " . somenum
					break
				endif
		endfor
endfun

function! Quit()
	exe ":bw!"
	let bufname = bufname("%")
	if bufname == '' || bufname == ""
		exe ":silent! q!"
	endif
endfun

fun! SearchDoc()
	call inputsave()
	let filename  = input("documentation search: ", "", "function")
	call inputrestore()
	execute "!pydoc3 " . filename
endfun

fun! ExecCurFile()
	" exec 'term ++curwin'
	call OpenTerm()
	call term_sendkeys("%", "\clear" . "\<CR>")
	"add more file types here if neeeded
	call term_sendkeys("%", "\python3 " . expand('#:p'))
	call term_sendkeys("%",  "\<CR>")
endfun

fun! ExecFile(filename)
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

fun! TerminalForward()
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

fun! TerminalBackward()
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

fun! NavForward()
	if (getbufvar("%", "&buftype") ==# 'terminal')
		call TerminalForward()
	else
		call BufferForward()
	endif
endfun

fun! NavBackward()
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

function! CleverTab()
	   if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
	      return "\<Tab>"
	   else
	      return "\<C-N>"
	   endif
	endfunction
inoremap <Tab> <C-R>=CleverTab()<CR>
autocmd InsertCharPre * call AutoComplete()

fun! AutoComplete()
    if v:char =~ '\K' && !pumvisible()
        \ && getline('.')[col('.') - 4] !~ '\K'
        \ && getline('.')[col('.') - 3] =~ '\K'
        \ && getline('.')[col('.') - 2] =~ '\K' " last char
        \ && getline('.')[col('.') - 1] !~ '\K'

        call feedkeys("\<c-p>", "n")
    end
endfun

if v:version >= 700
  au BufLeave * let b:winview = winsaveview()
  au BufEnter * if(exists('b:winview')) | call winrestview(b:winview) | endif
endif

" === IDK ===
syntax on
" let g:python3_host_prog = '/usr/bin/python3.9'
" let g:python_host_prog = '/usr/bin/python2'

" === SET LEADER ===
let mapleader="w"

" === PRE-PLUGIN COMMANDS ===
let g:ale_completion_enabled=0
let g:ale_disable_lsp=1

" === PLUGINS ===
call plug#begin('~/.vim/plugged')
Plug 'ervandew/supertab'
Plug 'puremourning/vimspector'
Plug 'wincent/ferret'
Plug 'alvan/vim-closetag'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'vim-python/python-syntax'
Plug 'dense-analysis/ale'
Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Yggdroot/indentLine'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tmhedberg/SimpylFold'
Plug 'tpope/vim-commentary'
Plug 'prabirshrestha/asyncomplete.vim'
" Plug 'prabirshrestha/vim-lsp'
" Plug 'mattn/vim-lsp-settings'
" Plug 'prabirshrestha/asyncomplete-lsp.vim'
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


"AIRLINE
let g:airline_theme="alduin"
let g:airline#extensions#coc#enabled=1
let g:airline#extensions#ale#enabled=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#left_sep=""
let g:airline#extensions#tabline#left_alt_sep=""
let g:airline#extensions#tabline#right_sep=""
let g:airline#extensions#tabline#right_alt_sep=""
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ""
let g:airline_right_sep = ""
let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline_mode_map = { 'n': 'N', 'i': "I", 'c': "C", "v": "V", "t": "T", "multi": 'w'}


let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = {
	\ 'dir':  '\.git$\|\.yardoc\|node_modules\|log\|tmp$|\v[\/]\.(git|hg|svn)$|\__pycache__$\',
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
let g:ale_python_flake8_options = '--ignore=E203,E741,E501,W503,E402'
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

let g:SuperTabDefaultCompletionType = 'context'
let g:SuperTabContextTextOmniPrecedence = []
let g:lsp_enable_autocomplete=v:true
let g:lsp_semantic_enabled=0
let g:lsp_preview_keep_focus=0
let g:lsp_preview_autoclose=1
let g:lsp_signature_help_enabled = 0
let g:lsp_completion_documentation_enabled=0
let g:lsp_preview_float=0
let g:lsp_diagnostics_enabled=0
let g:lsp_insert_text_enabled=1
let g:lsp_edit_text_enabled=1
let g:lsp_async_completion=1
let g:asyncomplete_auto_completeopt=0
" let g:lsp_completion_resolve_timeout=10000
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
set nrformats+=alpha
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
set wildmode=list:full
set winminheight=0
set winminwidth=15
set completeopt=menuone,noinsert
set complete=.

" === AUTO COMMANDS ===
"
" autocmd FileType python set omnifunc+=lsp#complete
autocmd FileType css set omnifunc+=csscomplete#CompleteCSS
autocmd FileType html set omnifunc+=htmlcomplete#CompleteTags
autocmd FileType javascript set omnifunc+=javascriptcomplete#CompleteJS
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

augroup FiletypeGroup
		autocmd!
		au BufNewFile,BufRead *.jsx set filetype=javascript.jsx
augroup END


autocmd BufLeave term://* startinsert
autocmd BufEnter term://* startinsert


" === UNMAP THE FOLLOWING: ===
nnoremap <nowait>dk <Esc>
nnoremap <nowait>dj <Esc>

" === ADDING COMMAND ===
command! -nargs=+ -complete=file Ex call ExecFile(<q-args>)

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
nnoremap <nowait><leader>w :silent! w! <CR>
nnoremap <nowait><leader>t :call OpenTerm()<CR>
map <leader>/ :<C-u>execute "!pydoc3 " . expand("<cword>")<CR>

" === PLUGIN MAPPING ===
nmap <nowait><leader>[ <Plug>(ale_previous_wrap)
nmap <nowait><leader>] <Plug>(ale_next_wrap)

" === INTRACTIVE MAPPINGS ===
inoremap jk <Esc>l
inoremap <expr> <nowait>jj  pumvisible() ? "\<C-n>" : "wj"
inoremap <expr> <nowait>kk pumvisible() ? "\<C-p>" : "wk"
inoremap <expr> <nowait><CR> pumvisible() ? "\<CR><Esc>a" : "\<CR>"
" inoremap <expr> <CR><CR>  pumvisible() ? "\<CR><Esc>o" : "\<CR><CR>"
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

" === TERM MAPPINGS ===
tnoremap jk <C-\><C-n>
tnoremap ; <C-w>:
tnoremap <leader>t <C-W>:b! #<CR>
tnoremap <leader>1 <C-W>:b1 #<CR>
tnoremap qq <C-W>:bw! <CR>
" tnoremap <nowait><leader>l <C-W>:wincmd l<CR>
" tnoremap <nowait><leader>h <C-W>:wincmd h<CR>
tnoremap <leader>n <C-w>:call TerminalForward()<CR>
tnoremap <leader>p <C-w>:call TerminalBackward()<CR>
nnoremap <leader>h :wincmd h <bar> :silent! set autoread <CR>
nnoremap <leader>j :wincmd j <bar> :silent! set autoread <CR>
nnoremap <leader>k :wincmd k <bar> :silent! set autoread <CR>
nnoremap <leader>l :wincmd l <bar> :silent! set autoread <CR>
nnoremap <leader>= <C-W>:resize +5 <CR>
" nnoremap V <c-V>
nnoremap <leader>- <C-W>:resize -5 <CR>

" === VISUAL MODE MAPPINGS ===
xnoremap <nowait> <space> <Esc>
