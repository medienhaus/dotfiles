" disable/unset some keymaps
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

nnoremap Q <Nop>
nnoremap q <Nop>

nnoremap <silent> <Space> <Nop>
vnoremap <silent> <Space> <Nop>

" clear hlsearch with <Esc>
inoremap <silent> <Esc><Esc> <Esc>:nohlsearch<CR><Esc>
nnoremap <silent> <Esc><Esc> :nohlsearch<CR><Esc>

" explore directory of current file
nnoremap <silent> <Leader><Tab> :Explore<CR>

" fix git diff/merge keymaps for vim-fugitive + diffopt linematch:60
nnoremap <silent> dh :set diffopt&<Bar>diffget //2<Bar>set diffopt+=linematch:60<CR>
nnoremap <silent> dl :set diffopt&<Bar>diffget //3<Bar>set diffopt+=linematch:60<CR>
nnoremap <silent> dp :set diffopt&<Bar>diffput<Bar>set diffopt+=linematch:60<CR>

" improve up/down navigation for wrapped lines
nnoremap <expr> <silent> j v:count == 0 ? "gj" : "j"
nnoremap <expr> <silent> k v:count == 0 ? "gk" : "k"

" list buffers and wait for selection
nnoremap <Leader>fb :ls<CR>:buffer<Space>

" make <n> always search forward
xnoremap <expr> n 'Nn'[v:searchforward]
nnoremap <expr> n 'Nn'[v:searchforward]
onoremap <expr> n 'Nn'[v:searchforward]

" make <N> always search backward
nnoremap <expr> N 'nN'[v:searchforward]
xnoremap <expr> N 'nN'[v:searchforward]
onoremap <expr> N 'nN'[v:searchforward]

" move line(s) up/down
nnoremap <silent> <M-j> :m .+1<CR>==
nnoremap <silent> <M-k> :m .-2<CR>==
vnoremap <silent> <M-j> :m '>+1<CR>gv=gv
vnoremap <silent> <M-k> :m '<-2<CR>gv=gv
"inoremap <silent> <M-j> <Esc>:m .+1<CR>==gi
"inoremap <silent> <M-k> <Esc>:m .-2<CR>==gi

" print highlight group under cursor
nnoremap <silent> <Leader>H :call Vim_show_pos()<CR>

" remove trailing whitespaces
"nnoremap <Leader>f :%s/\s\+$//ge<CR>

" reload ~/.vimrc
nnoremap <Leader>r :source $MYVIMRC<CR>

" retain cursor position on join
nnoremap J m`J``

" retain selection after shift
vnoremap < <gv
vnoremap > >gv

" select all
nnoremap <M-a> ggVG

" set/reload colorscheme
nnoremap <silent> <Leader>1 :colorscheme untitled<CR>
nnoremap <silent> <Leader>2 :colorscheme untitled_faded<CR>

" substitute word under cursor
nnoremap <Leader>s :%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>

" switch buffers
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>

" switch tabs
nnoremap <silent> [t :tabprevious<CR>
nnoremap <silent> ]t :tabnext<CR>

" toggle list
nnoremap <Leader>s :set list!<CR>

" toggle number/relativenumber
nnoremap <Leader>l :set number! relativenumber!<CR>

" undo breakpoints
inoremap , ,<C-g>u
inoremap . .<C-g>u
inoremap ; ;<C-g>u

" vertically center after half-page up/down
"nnoremap <C-d> <C-d>zz
"nnoremap <C-u> <C-u>zz

" vertically center after jump to next match
"nnoremap n nzzzv
"nnoremap N Nzzzv
