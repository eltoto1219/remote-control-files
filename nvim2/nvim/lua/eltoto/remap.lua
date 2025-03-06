-- functions
function array_reverse(x)
	local n, m = #x, #x/2
	for i=1, m do
		x[i], x[n-i+1] = x[n-i+1], x[i]
	end
	return x
end

function dump(o)
	if type(o) == 'table' then
		local s = '{ '
		for k,v in pairs(o) do
			if type(k) ~= 'number' then k = '"'..k..'"' end
			s = s .. '['..k..'] = ' .. dump(v) .. ','
		end
		return s .. '} '
	else
		return tostring(o)
	end
end

function Quit()
	vim.cmd("bw!")
	bufname = vim.fn.bufname("%")
	if bufname == '' or bufname == "" then
		vim.cmd("silent! q!")
	end
end

function BufferForward()
	local curbuf = vim.fn.bufnr("%")
	local bufinfolist = vim.fn.getbufinfo()
	local bufcount = vim.fn.bufnr("$")
	local buffirst = bufinfolist[1].bufnr

	for _, i in pairs(vim.fn.getbufinfo()) do
		local somenum = i['bufnr']
		local somename = i['name']
		local islisted = i['listed']
		-- local isloaded= i['loaded']
		local cond1 = somenum ~= ""
		local cond2 = curbuf < somenum
		--cond4 = vim.fn.getbufvar(somenum, '&buftype') ~= 'scratch' | 'terminal'
		local cond3 = islisted == 1
		-- local cond4 = isloaded == 1
        local cond4 = true
		local cond5 = somename ~= ""
		local cond6 =  not string.match(somename, "term://")

		if cond1 and cond2 and cond3  and cond4 and cond5 and cond6 then
			print('--> N: ' .. somename .. ' #: ' .. somenum)
			vim.cmd("buffer" .. somenum)
			break
		elseif somenum == bufcount then
			print('--> N: ' .. vim.fn.bufname(buffirst) .. ' #: ' .. buffirst)
			vim.cmd('bfirst')
			break
		end
	end
end

function BufferBackward()

	local curbuf = vim.fn.bufnr("%")
	local buffirst =vim.fn.getbufinfo()[1].bufnr


	local bufinfo = array_reverse(vim.fn.getbufinfo())
	-- local bufinfo = vim.fn.getbufinfo()
	for _, i in pairs(bufinfo) do
		local somenum = i['bufnr']
		local somename = i['name']
		local islisted = i['listed']
		-- local isloaded= i['loaded']
		-- local cond1 = isloaded == 1
        local cond1 = true
		local cond2 = somenum ~= ""
		local cond3 = curbuf > somenum
		--cond4 = vim.fn.getbufvar(somenum, '&buftype') ~= 'scratch' | 'terminal'
		local cond4 = islisted == 1
		local cond5 = somename ~= ""
		local cond6 =  not string.match(somename, "term://")

		if curbuf == buffirst  and cond1 and cond2 and cond5 and cond5 and cond6 then
			print('<-- N: ' .. somename .. ' #: ' .. somenum)
			vim.cmd("buffer" .. somenum)
			break
		elseif cond2 and cond4 and cond3 and cond5 and cond6 then
			print('<-- N: ' .. somename .. ' #: ' .. somenum)
			vim.cmd("buffer" .. somenum)
			break
		end
	end
end


function NavForward()
	-- echo filter(map(getbufinfo(), 'v:val.bufnr'), 'getbufvar(v:val, "&buftype") is# "terminal"'
	-- echo uniq(map(filter(getwininfo(), 'v:val.terminal'), 'v:val.bufnr'))
    -- BufferForward()
	if vim.fn.getbufvar("%", "&buftype") == 'terminal' then
		-- TerminalForward()
        return
	else
		BufferForward()
	end
end

function NavBackward()
	if vim.fn.getbufvar("%", "&buftype") == 'terminal' then
		-- TerminalBackward()
        return
	else
		-- print('here')
		BufferBackward()
	end
end

-- function! termhere#UseAbsoluteFilenameInTermBelow(prefix, ...) abort
--   if &buftype ==# 'terminal'
--     call termhere#JumpToNormalBuffer()
--   endif
--   let l:postfix = get(a:, 1, '')
--   let l:filename = expand('%:p')
--   call termhere#JumpToTerminalBuffer()
--   call feedkeys('a' . a:prefix . l:filename . l:postfix)
-- endfunction



-- normal mode mappings

vim.keymap.set("n", "<leader>,", function() NavBackward() end)
vim.keymap.set("n", "<leader>;", function() NavForward() end)
vim.keymap.set("n", "wpv", vim.cmd.Ex)
vim.keymap.set("n", "qq", function() Quit() end)
vim.keymap.set("n", "qa", ":silent! q! <CR>")
vim.keymap.set("n", "<leader>w", ":silent! w! <CR>")
vim.keymap.set("n", "<c-z>", "<nop>")


vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
vim.keymap.set("n", "<leader>vw", function() vim.lsp.buf.workspace_symbol() end, opts)
vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
vim.keymap.set("n", "<leader>vc", function() vim.lsp.buf.code_action() end, opts)
vim.keymap.set("n", "<leader>vr", function() vim.lsp.buf.references() end, opts)
vim.keymap.set("n", "<leader>vn", function() vim.lsp.buf.rename() end, opts)
vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)

--vim.keymap.set("n", "<leader>pe", ":NvimTreeToggle <CR>")

----interactive mode mappings
vim.keymap.set("i", "jk", "<esc>l")

-- terminal mode mappings
vim.keymap.set("t", "jk", "<esc>l")

-- select mode mappings
vim.keymap.set("s", "jk", "<esc>l")

-- visual mode mappings
vim.keymap.set("v", "<space>", "<esc>")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")


-- local termlist = vim.fn.uniq(vim.fn.map(vim.fn.filter(vim.fn.getwininfo(), 'v:val.terminal'), 'v:val.bufnr'))
-- for k, v in pairs(termlist) do
-- 	print(k, v)
-- end
-- for _, i in pairs(vim.fn.getbufinfo()) do
--     local somenum = i['bufnr']
--     local somename = i['name']
--     local islisted = i['listed']
--     local cond6 =  not string.match(somename, "term://")
--     print(somename, cond6)
-- end


vim.cmd([[

" let termlist = uniq(map(filter(getwininfo(), 'v:val.terminal'), 'v:val.bufnr'))

"echo getbufvar('%', "&mod")
"echo filter(map(getbufinfo(), 'v:val.bufnr'), 'getbufvar(v:val, "&buftype") is# "terminal"'


fun! OpenTerm()

    let termlist = []
    for i in getbufinfo()
	    if stridx(i.name, "term://") != -1
		    call add(termlist, i.bufnr)
	    endif
	endfor
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
        execute "term"
        execute "normal! a"
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


fun! ExecCurFile()
    let l:postfix = get(a:, 1, '')
    let l:filename = expand('%:p')
    call OpenTerm()
    call feedkeys('reset')
    call feedkeys("\<CR>")
    call feedkeys('python3 ' . l:filename . l:postfix)
    call feedkeys("\<CR>")
endfun

" cant figure out how to get this to work for neovim
autocmd FileType python map <leader>e :call ExecCurFile()<CR>
"autocmd FileType lua map <leader>e :call ExecCurFile()<CR>

" mappings that I still have in regular vim
nnoremap <leader>h :wincmd h <bar> :silent! set autoread <CR>
nnoremap <leader>j :wincmd j <bar> :silent! set autoread <CR>
nnoremap <leader>k :wincmd k <bar> :silent! set autoread <CR>
nnoremap <leader>l :wincmd l <bar> :silent! set autoread <CR>
nnoremap <nowait><leader>" ciw""<Esc>P<Esc>
nnoremap <nowait><leader>' ciw''<Esc>P<Esc>
nnoremap <nowait>d' di'hPl2x<Esc>
nnoremap <nowait>d" di"hpl2x<esc>
"nnoremap <nowait><leader>n :call NavForward()<CR>
"nnoremap <nowait><leader>p :call NavBackward()<CR>
nnoremap <nowait><leader>c za
nnoremap <nowait>dw dw
nnoremap <nowait>d2w d2w
nnoremap <nowait>d3w d3w
nnoremap <nowait>d4w d4w
nnoremap <nowait>yw yw
nnoremap <nowait>cw cw
nnoremap <nowait>gu g~wi<Esc>
nnoremap <nowait>gU g~Wi<Esc>
nnoremap <nowait>W" ciW""<Esc>P
nnoremap <nowait>W' ciW''<Esc>P
nnoremap <space> :set hlsearch!<CR>
nnoremap <nowait><leader>t :call OpenTerm()<CR>
nnoremap <leader>= <C-W>:resize +5 <CR>
nnoremap <leader>- <C-W>:resize -5 <CR>
nnoremap W= <C-W>:vert resize +5 <CR>
nnoremap W- <C-W>:vert resize -5 <CR>


"map <leader>/ :<C-u>execute "!pydoc3 " . expand("<cword>")<CR>

tnoremap jk <C-\><C-n>
"tnoremap ; <C-\><C-n>:
tnoremap <leader>t <C-\><C-n>:b! #<CR>
tnoremap <leader>1 <C-\><C-n>:b1 #<CR>
tnoremap qq <C-\><C-n>:bw! <CR>


" plugin mappings

nmap <nowait><leader>[ <Plug>(ale_previous_wrap)
nmap <nowait><leader>] <Plug>(ale_next_wrap)

]])



