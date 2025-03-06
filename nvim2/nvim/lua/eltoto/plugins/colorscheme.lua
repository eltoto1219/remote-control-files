return {
    {
        -- "ellisonleao/gruvbox.nvim",
        -- -- name = "gruvbox",
	"folke/tokyonight.nvim",
        config = function()
            vim.cmd([[
            "let g:gruvbox_invert_selection = '0'
            "let g:gruvbox_contrast_dark = 'hard'
            "let g:closetag_filenames = '*.html,*.xhtml,*.phtml, *jsx, *js'
            "colorscheme  gruvbox
            colorscheme tokyonight-night
            ]])
        end
    }
}
