" -- Vim color scheme -- `:help highlight` -------------------------------------

" color scheme name
let g:colors_name = "untitled"

" set dark or light fallback colors
set background=dark

" reset highlighting
hi clear

" reset syntax highlighting
if exists("syntax_on")
  syntax reset
endif

" -- Color definitions ---------------------------------------------------------

" let white = "231"
" let grey = "240"

" let grey_lighter = "245"
" let grey_lightest = "254"

" let grey_darker = "235"
" let grey_darkest = "234"

" let red = "197"
" let green = "155"
" let blue = "117"
" let yellow = "228"

" let lime = "193"
" let mint = "115"
" let purple = "105"

" -- Highlight groups -- `:help highlight-groups` ------------------------------

hi ColorColumn           ctermfg=none        ctermbg=234         cterm=none

hi Conceal               ctermfg=none        ctermbg=235         cterm=none

hi CurSearch             ctermfg=234         ctermbg=193         cterm=none
hi Cursor                ctermfg=none        ctermbg=none        cterm=reverse
hi CursorColumn          ctermfg=none        ctermbg=235         cterm=none
hi CursorLine            ctermfg=none        ctermbg=235         cterm=none

hi Directory             ctermfg=117         ctermbg=none        cterm=none

hi DiffAdd               ctermfg=115         ctermbg=235         cterm=none
hi DiffChange            ctermfg=117         ctermbg=235         cterm=none
hi DiffDelete            ctermfg=197         ctermbg=235         cterm=none
hi DiffText              ctermfg=231         ctermbg=235         cterm=none

"hi EndOfBuffer          ctermfg=240         ctermbg=234         cterm=none

"hi TermCursor           ctermfg=none        ctermbg=none        cterm=reverse
"hi TermCursorNC         ctermfg=none        ctermbg=none        cterm=none

hi ErrorMsg              ctermfg=231         ctermbg=197         cterm=none

hi VertSplit             ctermfg=235         ctermbg=235         cterm=none
"hi WinSeparator         ctermfg=            ctermbg=            cterm=

hi Folded                ctermfg=245         ctermbg=235         cterm=none
hi FoldColumn            ctermfg=240         ctermbg=235         cterm=none

hi SignColumn            ctermfg=240         ctermbg=235         cterm=none

hi IncSearch             ctermfg=234         ctermbg=193         cterm=none

"hi Substitute           ctermfg=            ctermbg=            cterm=

hi LineNr                ctermfg=240         ctermbg=235         cterm=none
"hi LineNrAbove          ctermfg=            ctermbg=            cterm=
"hi LineNrBelow          ctermfg=            ctermbg=            cterm=

hi CursorLineNr          ctermfg=228         ctermbg=235         cterm=none
"hi CursorLineFold       ctermfg=            ctermbg=            cterm=
"hi CursorLineSign       ctermfg=            ctermbg=            cterm=

hi MatchParen            ctermfg=none        ctermbg=240         cterm=none

hi ModeMsg               ctermfg=228         ctermbg=none        cterm=none

"hi MsgArea              ctermfg=none        ctermbg=none        cterm=none
"hi MsgSeparator         ctermfg=            ctermbg=            cterm=

hi MoreMsg               ctermfg=228         ctermbg=none        cterm=none

hi NonText               ctermfg=240         ctermbg=235         cterm=none

hi Normal                ctermfg=254         ctermbg=234         cterm=none
"hi NormalFloat          ctermfg=            ctermbg=            cterm=
"hi NormalNC             ctermfg=none        ctermbg=none        cterm=none

hi Pmenu                 ctermfg=240         ctermbg=235         cterm=none
hi PmenuSel              ctermfg=231         ctermbg=235         cterm=none
hi PmenuSbar             ctermfg=none        ctermbg=235         cterm=none
hi PmenuThumb            ctermfg=none        ctermbg=240         cterm=none

hi Question              ctermfg=228         ctermbg=none        cterm=none

"hi QuickFixLine         ctermfg=            ctermbg=            cterm=

hi Search                ctermfg=234         ctermbg=254         cterm=none

hi SpecialKey            ctermfg=240         ctermbg=235         cterm=none

hi SpellBad              ctermfg=none        ctermbg=240         cterm=none
hi SpellCap              ctermfg=none        ctermbg=240         cterm=none
hi SpellLocal            ctermfg=none        ctermbg=240         cterm=none
hi SpellRare             ctermfg=none        ctermbg=240         cterm=none

hi StatusLine            ctermfg=231         ctermbg=235         cterm=none
hi StatusLineNC          ctermfg=240         ctermbg=235         cterm=none

hi StatusLineR          ctermfg=197         ctermbg=235         cterm=none
hi StatusLineG          ctermfg=155         ctermbg=235         cterm=none
hi StatusLineB          ctermfg=117         ctermbg=235         cterm=none
hi StatusLineY          ctermfg=228         ctermbg=235         cterm=none
hi StatusLineTerm       ctermfg=231         ctermbg=235         cterm=none
hi StatusLineTermNC     ctermfg=240         ctermbg=235         cterm=none

hi TabLine               ctermfg=240         ctermbg=235         cterm=none
hi TabLineFill           ctermfg=none        ctermbg=235         cterm=none
hi TabLineSel            ctermfg=231         ctermbg=235         cterm=none

hi Title                 ctermfg=231         ctermbg=none        cterm=none

hi Visual                ctermfg=none        ctermbg=240         cterm=none

hi WarningMsg            ctermfg=234         ctermbg=228         cterm=none

"hi Whitespace           ctermfg=            ctermbg=            cterm=

hi WildMenu              ctermfg=234         ctermbg=228         cterm=none

"hi WinBar               ctermfg=none        ctermbg=none        cterm=bold
"hi WinBarNC             ctermfg=            ctermbg=            cterm=

" -- Syntax groups -- `:help group-name` ---------------------------------------

hi Comment               ctermfg=245         ctermbg=none        cterm=none

hi Constant              ctermfg=193         ctermbg=none        cterm=none
"hi String               ctermfg=            ctermbg=            cterm=
"hi Character            ctermfg=            ctermbg=            cterm=
"hi Number               ctermfg=            ctermbg=            cterm=
"hi Boolean              ctermfg=            ctermbg=            cterm=
"hi Float                ctermfg=            ctermbg=            cterm=

hi Identifier            ctermfg=254         ctermbg=none        cterm=none
"hi Function             ctermfg=            ctermbg=            cterm=

hi Statement             ctermfg=197         ctermbg=none        cterm=none
"hi Conditional          ctermfg=            ctermbg=            cterm=
"hi Repeat               ctermfg=            ctermbg=            cterm=
"hi Label                ctermfg=            ctermbg=            cterm=
"hi Operator             ctermfg=            ctermbg=            cterm=
"hi Keyword              ctermfg=            ctermbg=            cterm=
"hi Exception            ctermfg=            ctermbg=            cterm=

hi PreProc               ctermfg=197         ctermbg=none        cterm=none
"hi Include              ctermfg=            ctermbg=            cterm=
"hi Define               ctermfg=            ctermbg=            cterm=
"hi Macro                ctermfg=            ctermbg=            cterm=
"hi PreCondit            ctermfg=            ctermbg=            cterm=

"hi Type                 ctermfg=none        ctermbg=none        cterm=none
hi Type                  ctermfg=105         ctermbg=none        cterm=none
"hi StorageClass         ctermfg=            ctermbg=            cterm=
"hi Structure            ctermfg=            ctermbg=            cterm=
"hi Typedef              ctermfg=            ctermbg=            cterm=

hi Special               ctermfg=117         ctermbg=none        cterm=none
"hi SpecialChar          ctermfg=            ctermbg=            cterm=
"hi Tag                  ctermfg=            ctermbg=            cterm=
"hi Delimiter            ctermfg=            ctermbg=            cterm=
"hi SpecialComment       ctermfg=            ctermbg=            cterm=
"hi Debug                ctermfg=            ctermbg=            cterm=

hi Underlined            ctermfg=none        ctermbg=none        cterm=underline

hi Ignore                ctermfg=240         ctermbg=none        cterm=none

hi Error                 ctermfg=231         ctermbg=197         cterm=none

hi Todo                  ctermfg=228         ctermbg=240         cterm=none

" -- Diagnostic highlights -- `:help diagnostic-highlights` --------------------

hi DiagnosticError       ctermfg=197         ctermbg=235         cterm=none
hi DiagnosticWarn        ctermfg=228         ctermbg=235         cterm=none
hi DiagnosticInfo        ctermfg=117         ctermbg=235         cterm=none
hi DiagnosticHint        ctermfg=245         ctermbg=235         cterm=none
