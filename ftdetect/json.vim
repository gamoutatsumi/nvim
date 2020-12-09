autocmd VimEnter * nested if @% == '.textlintrc' | set filetype=json | endif
