let g:ale_linters_explicit = 1

"let g:ale_lint_on_text_changed = "never"
"let g:ale_lint_on_insert_leave = 0
"let g:ale_lint_on_enter = 0

let g:ale_sign_column_always = 1
"let g:ale_sign_error = ">>"
"let g:ale_sign_warning = "--"

let g:ale_fixers = {
\  "*": ["remove_trailing_lines", "trim_whitespace"],
\  "css": ["stylelint"],
\  "javascript": ["stylelint", "eslint"]
\}

let g:ale_linters = {
\  "css": ["stylelint"],
\  "javascript": ["stylelint", "eslint"]
\}

" fix linter errors
nnoremap <Leader>F :ALEFix<CR>

" go to definition
nnoremap <silent> gd :ALEGoToDefinition<CR>

" go to implementation
nnoremap <silent> gi :ALEGoToImplementation<CR>

" go to type definition
nnoremap <silent> go :ALEGoToTypeDefinition<CR>

" navigate to next/previous linter error
nnoremap <silent> [e :ALEPrevious -wrap -error<CR>
nnoremap <silent> ]e :ALENext -wrap -error<CR>

" navigate to next/previous linter warning
nnoremap <silent> [w :ALEPrevious -wrap -warning<CR>
nnoremap <silent> ]w :ALENext -wrap -warning<CR>
