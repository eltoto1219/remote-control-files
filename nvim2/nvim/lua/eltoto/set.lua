vim.cmd([[
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
set shortmess+=c
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set wildmenu
set wildmode=list:full
set winminheight=0
set winminwidth=15
hi StatusLine ctermbg=819
let python_highlight_all = 1
set encoding=UTF-8
set guifont=Hack\ Nerd\ Font
let g:vimspector_enable_mappings='HUMAN'
]])


