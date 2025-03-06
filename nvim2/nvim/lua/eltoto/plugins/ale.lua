return {
    {"dense-analysis/ale",
    config = function ()
        vim.cmd([[
        "ALE
        let g:ale_fixers={'python': ['autopep8', 'black', 'isort'], 'javascript': ['prettier', 'eslint']}
        let g:ale_fix_on_save=1
        let g:ale_fix_on_insert_leave=0

        let g:ale_completion_enabled = 0
        let g:ale_completion_autoimport = 0

        let g:ale_linter_aliases={}
        let g:ale_linters={'python':[], 'javascript': []}
        let g:ale_linters_explicit=0
        let g:ale_lint_on_text_changed='never'
        let g:ale_lint_on_insert_leave=0
        "let g:ale_python_flake8_options = '--max-line-length=88'
        "let g:ale_python_flake8_options = '--ignore=E203,E741,E501,W503,E402'
        ":help ale-fix

        let b:ale_warn_about_trailing_whitespace=0
        let g:ale_sign_column_always=0
        "let g:ale_set_quickfix=1
        "let g:ale_set_loclist=0
        let g:ale_set_highlights=0
        let g:ale_sign_error='!'
        let g:ale_sign_warning='?'
        let g:LanguageClient_useVirtualText = 0
        "let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
        ]])

    end
    }

}
