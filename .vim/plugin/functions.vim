" prevent loading the plugin multiple times
if exists("g:loaded_functions")
  finish
endif

" set plugin loaded
let g:loaded_functions = 1

" print highlight group under cursor
function! Vim_show_pos()
  let l:s = synID(line("."), col("."), 1)
  echo synIDattr(l:s, "name") . " -> " . synIDattr(synIDtrans(l:s), "name")
endfunction
