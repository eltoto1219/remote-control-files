return {
    {
        'vim-airline/vim-airline',
        dependencies={"ryanoasis/vim-devicons", 'vim-airline/vim-airline-themes'},
        config = function ()
            vim.cmd([[
            if (exists('g:loaded_webdevicons'))
                call webdevicons#refresh()
            endif

            "let g:airline_powerline_fonts = 1
            let g:airline_powerline_fonts = 1

            if !exists('g:airline_symbols')
                let g:airline_symbols = {}
            endif
            let g:airline_left_sep = ""
            let g:airline_right_sep = ""
            let g:airline#extensions#tabline#formatter='unique_tail'
            let g:airline_theme = 'alduin'
            let g:airline_mode_map = { 'n': 'N', 'i': "I", 'c': "C", "v": "V", "t": "T", "multi": 'w'}

            let g:airline#extensions#tabline#enabled=1
            let g:airline#extensions#tabline#left_sep=""
            let g:airline#extensions#tabline#left_alt_sep=""
            let g:airline#extensions#tabline#right_sep=""
            let g:airline#extensions#tabline#right_alt_sep=""
            let g:airline#extensions#tabline#buffer_idx_mode = 1

            let g:airline#extensions#ale#enabled = 0
            "let g:airline#extensions#nvimlsp#enabled = 1
            set statusline+=%{FugitiveStatusline()}


            let g:WebDevIconsUnicodeDecorateFolderNodes = 1
            let g:WebDevIconsUnicodeDecorateFolderNodeDefaultSymbol = ''

            let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {}
            let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['nerdtree'] = ''
            ]])


        end
    }

}
