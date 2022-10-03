set bg=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

hi Normal guibg=NONE ctermbg=NONE

let g:colors_name="mokul"
if has('nvim') || !has('gui_running')
    " color terminal
    " :help hi-normal-cterm
    if get(g:, 'mopkai_is_not_set_normal_ctermbg', 0)
        hi Normal          ctermfg=253
    else
        hi Normal          ctermfg=253 ctermbg=233
    endif

    hi Comment         ctermfg=103

    hi Constant        ctermfg=135              cterm=bold
    hi String          ctermfg=229
    hi Character       ctermfg=229
    hi Number          ctermfg=135
    hi Boolean         ctermfg=135              cterm=bold
    hi Float           ctermfg=135

    hi Identifier      ctermfg=208              cterm=none
    hi Function        ctermfg=118

    hi Statement       ctermfg=161              cterm=bold
    hi Conditional     ctermfg=161              cterm=bold
    hi Repeat          ctermfg=161              cterm=bold
    hi Label           ctermfg=154              cterm=none
    hi Operator        ctermfg=82
    hi keyword         ctermfg=161              cterm=bold
    hi Exception       ctermfg=118              cterm=bold

    hi PreProc         ctermfg=118
    hi Include         ctermfg=32
    hi Define          ctermfg=168
    hi Macro           ctermfg=168
    hi PreCondit       ctermfg=75               cterm=bold

    hi Type            ctermfg=81               cterm=none
    hi StorageClass    ctermfg=208
    hi Structure       ctermfg=32               cterm=bold
    hi Typedef         ctermfg=81

    hi Special         ctermfg=81
    hi SpecialChar     ctermfg=161              cterm=bold
    hi Tag             ctermfg=161
    hi Delimiter       ctermfg=241
    hi SpecialComment  ctermfg=245              cterm=bold
    hi Debug           ctermfg=225              cterm=bold

    hi Underlined      ctermfg=244              cterm=underline
    hi Ignore          ctermfg=244
    hi Error           ctermfg=219
    hi Todo            ctermfg=231   cterm=bold

    hi TabLine         ctermfg=232  cterm=none
    hi TabLineSel      ctermfg=232  cterm=bold
    hi TabLineFill                  cterm=none

    hi Search          ctermfg=232  ctermbg=202 cterm=bold

    if has('spell')
        hi SpellBad
        hi SpellCap
        hi SpellLocal
        hi SpellRare   ctermfg=none cterm=none
    endif

    if get(g:, 'mopkai_is_not_set_normal_ctermbg', 0)
        hi FoldColumn      None
        hi FoldColumn      ctermfg=67
    else
        hi FoldColumn      ctermfg=67
     endif
    hi Folded          ctermfg=67
    " ここまで


    hi Cursor          ctermfg=16   cterm=none
    hi CursorLine                   cterm=none
    hi CursorLineNr    ctermfg=208             cterm=none

    hi DiffAdd
    hi DiffChange      ctermfg=181
    hi DiffDelete      ctermfg=162
    hi DiffText                    cterm=bold

    hi Directory       ctermfg=118               cterm=bold
    hi ErrorMsg        ctermfg=199     cterm=bold
    hi IncSearch       ctermfg=193

    hi SpecialKey      ctermfg=81

    hi MatchParen      ctermfg=208  cterm=bold
    hi ModeMsg         ctermfg=229
    hi MoreMsg         ctermfg=229

    " complete menu
    hi Pmenu           ctermfg=81
    hi PmenuSel        ctermfg=81
    hi PmenuSbar
    hi PmenuThumb      ctermfg=81

    hi Question        ctermfg=81

    " marks column
    if get(g:, 'mopkai_is_not_set_normal_ctermbg', 0)
        hi SignColumn      None
        hi SignColumn      ctermfg=118
    else
        hi SignColumn      ctermfg=118
    endif
    hi StatusLine      ctermfg=238
    hi StatusLineNC    ctermfg=244
    hi Title           ctermfg=166


    hi VertSplit       ctermfg=244   cterm=bold
    hi Visual
    hi WarningMsg      ctermfg=231   cterm=bold
    hi WildMenu        ctermfg=81

    hi CursorColumn
    hi ColorColumn
    hi LineNr          None
    hi LineNr          ctermfg=250
    hi NonText         ctermfg=59

    hi SpecialKey      ctermfg=59
endif

hi Normal guibg=NONE ctermbg=NONE
