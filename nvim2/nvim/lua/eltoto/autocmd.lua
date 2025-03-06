-- Help me spell
-- vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
-- 	pattern = { "*.txt", "*.md" },
-- 	callback = function()
-- 		-- vim.lo.spell			= true
-- 		-- vim.lo.wrap				= true
-- 	end,
-- })
vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
	pattern = { "*.cmake", "CMakeLists.txt" },
	callback = function()
		vim.lo.spell			= false
		vim.lo.wrap				= false
	end,
})

-- Remove Sign column in terminal mode
vim.api.nvim_create_autocmd({"TermOpen", "TermEnter", "BufEnter"}, {
	pattern = { "term://*" },
	callback = function()
		vim.wo.relativenumber=false
		vim.wo.number=false
		vim.o.signcolumn="no"
	end,
})



vim.cmd([[

"functions
function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# "\s"
endfunction

function! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfunction


function! ResizeSplits()
	"later we can make logic for other stuff like for specific splits
  wincmd=
	exe "vert resize " . (winwidth(0) * 1000)
endfunction


augroup FiletypeGroup
		autocmd!
		au BufNewFile,BufRead *.jsx set filetype=javascript.jsx
augroup END

autocmd BufLeave term://* stopinsert
autocmd BufEnter term://* startinsert

autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()



" autocmd FileType python setlocal completeopt-=preview
"augroup ReduceNoise
"		autocmd!
"		autocmd BufEnter,BufNewFile,WinEnter,WinNew * :call ResizeSplits()
"augroup END
"

"autocmd TermOpen * setlocal nonumber norelativenumber
"autocmd BufLeave term://* startinsert
"autocmd BufWinEnter,WinEnter term://* stopinsert



]])
