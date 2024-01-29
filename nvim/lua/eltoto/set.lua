-- vim.opt.guicursor = ""
vim.o.background = "dark"
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.g.nvim_tree_show_icons = {
  folders = 1,
  files = 1,
  git = 1,
  folder_arrows = 1,
}





vim.cmd([[
"airline

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
let g:airline_theme = 'alduin'
let g:airline_mode_map = { 'n': 'N', 'i': "I", 'c': "C", "v": "V", "t": "T", "multi": 'w'}


" ctrlp
"let g:ctrlp_user_command = 'find %s -type f'
"let g:ctrlp_use_caching=0
"let g:ctrlp_map = '<leader>s'
"let g:ctrlp_cmd = 'CtrlP'
"let g:ctrlp_by_filepath=0
"let g:ctrlp_pregexp=0
"let g:ctrlp_max_depth = 3
"let g:ctrlp_default_input = 1

"ALE
let g:ale_completion_autoimport = 0
let g:ale_fixers={'python': ['autopep8', 'black', 'isort'], 'javascript': ['prettier', 'eslint']}
let g:ale_fix_on_save=1
let g:ale_fix_on_insert_leave=0
let g:ale_linter_aliases={'jsx': ['css', 'javascript']}
let g:ale_linters={'python': ['flake8'], 'jsx': ['html', 'css', 'javascript'], 'javascript': ['css', 'javascript']}
let g:ale_python_flake8_options = '--max-line-length=88'
let g:ale_python_flake8_options = '--ignore=E203,E741,E501,W503,E402'
":help ale-fix
"let g:ale_lint_on_text_changed='never'
let g:ale_lint_on_insert_leave=1
let g:ale_linters_explicit=1
let b:ale_warn_about_trailing_whitespace=0
let g:ale_sign_column_always=1
let g:ale_set_quickfix=1
let g:ale_set_loclist=0
let g:ale_set_highlights=1
let g:ale_sign_error='!'
let g:ale_sign_warning='?'
let g:LanguageClient_useVirtualText = 0
"let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

"" gruvbox
let g:gruvbox_invert_selection = '0'
let g:gruvbox_contrast_dark = 'hard'
let g:closetag_filenames = '*.html,*.xhtml,*.phtml, *jsx, *js'
colorscheme  gruvbox
let skip_defaults_vim=1
set nrformats+=alpha
set viminfo=""
set foldmethod=indent
set foldlevel=99
set backspace=2
syntax enable
set t_Co=256
set noerrorbells
set noinsertmode
set hidden
set cursorline
set splitbelow
set mouse=
set sel=exclusive
"set statusline^=%{coc#status()}
"set statusline+=%{StatusDiagnostic()} --> assuming this one is for ale
set statusline+=%{FugitiveStatusline()}
set shortmess+=c
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set wildmenu
set wildmode=list:full
set winminheight=0
set winminwidth=15
hi StatusLine ctermbg=819
let python_highlight_all = 1
set encoding=UTF-8
set guifont=FiraCode\ NF\ 11

let g:vimspector_enable_mappings='HUMAN'



]])


