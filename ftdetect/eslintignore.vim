autocmd VimEnter * nested if @% == '.eslintignore' | set filetype=gitignore | endif
