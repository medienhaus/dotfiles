" prevent loading the plugin multiple times
if exists("g:loaded_statusline")
  finish
endif

" set plugin loaded
let g:loaded_statusline = 1

" set mode symbols
"let g:currentmode = {
"  \ "n"  : "N",
"  \ "i"  : "I",
"  \ "R"  : "R",
"  \ "c"  : "C",
"  \ "v"  : "V",
"  \ "V"  : "V",
"  \ "" : "V",
"  \ "s"  : "S",
"  \ "S"  : "S",
"  \ "" : "S",
"\}

" return mode
"function ModeCurrent() abort
"  let l:modecurrent = mode()
"  let l:modelist = toupper(get(g:currentmode, l:modecurrent, "V·Block "))
"  let l:current_status_mode = l:modelist
"  return l:current_status_mode
"endfunction

" check if byte-order-mark
function FileBomb() abort
  return &bomb != "" ? "BOM!" : ""
endfunction

" return file encoding
function FileEnc() abort
  "return &fenc != "" ? &fenc : &enc
  return &fenc != "" ? &fenc : "none"
endfunction

" return file type
function FileType() abort
  return &filetype != "" ? &filetype : "none"
endfunction

" check if modified
function Modified() abort
  return &modified && !&readonly ? "+" : ""
endfunction

" check if readonly
function ReadOnly() abort
  return &readonly || !&modifiable ? "×" : ""
endfunction

" check if trailing whitespaces
function TrailingSpaces() abort
  return len(filter(getline(1,"$"), "v:val =~ '\\s$'")) > 0 ? "¬" : ""
endfunction

" check if linter errors/warnings
"function! LinterStatus() abort
"  let l:counts = ale#statusline#Count(bufnr(""))
"  let l:all_errors = l:counts.error + l:counts.style_error
"  let l:all_non_errors = l:counts.total - l:all_errors
"  return l:counts.total == 0 ? "OK" : printf(
"  \ "%dW %dE",
"  \ all_non_errors,
"  \ all_errors
"  \)
"endfunction

" check if linter alright
"function! LinterAlright() abort
"  let l:counts = ale#statusline#Count(bufnr(""))
"  return l:counts.total == 0 ? "OK" : ""
"endfunction

" check if linter errors
"function! LinterErrors() abort
"  let l:counts = ale#statusline#Count(bufnr(""))
"  let l:all_errors = l:counts.error + l:counts.style_error
"  return l:all_errors != 0 ? printf("%dE", all_errors) : ""
"endfunction

" check if linter warnings
"function! LinterWarnings() abort
"  let l:counts = ale#statusline#Count(bufnr(""))
"  let l:all_non_errors = l:counts.total - l:counts.error - l:counts.style_error
"  return l:all_non_errors != 0 ? printf("%dW", all_non_errors) : ""
"endfunction

" highlight colors
hi StatusLineR     ctermfg=197     ctermbg=235     cterm=none
hi StatusLineG     ctermfg=155     ctermbg=235     cterm=none
hi StatusLineB     ctermfg=81      ctermbg=235     cterm=none
hi StatusLineY     ctermfg=228     ctermbg=235     cterm=none

" status line
set statusline=
"set statusline+=%-3n
"set statusline+=\ %-2{ModeCurrent()}
set statusline+=\ %F
set statusline+=%#StatusLineG#%2{Modified()}%*
set statusline+=%#StatusLineR#%2{ReadOnly()}%*
set statusline+=%#StatusLineY#%2{TrailingSpaces()}%*
set statusline+=%=
set statusline+=\ %<
set statusline+=\ %{FileType()}
set statusline+=\ \|\ %{FileEnc()}
set statusline+=%5{FileBomb()}
set statusline+=\ \|\ %{&fileformat}
set statusline+=\ \|\ %p%%\ \|\ %l/%L\ \:\ %c
"set statusline+=\ \|\ %{LinterStatus()}
"set statusline+=\ \|\ %{LinterAlright()}
"set statusline+=%#StatusLineY#%{LinterWarnings()}%*
"set statusline+=%#StatusLineR#%{LinterErrors()}%*
