" vi:syntax=vim

" base16-vim (https://github.com/chriskempson/base16-vim)
" by Chris Kempson (http://chriskempson.com)
" Atelier Cave scheme by Bram de Haan (http://atelierbramdehaan.nl)

" This enables the coresponding base16-shell script to run so that
" :colorscheme works in terminals supported by base16-shell scripts
" User must set this variable in .vimrc
"   let g:base16_shell_path=base16-builder/output/shell/
if !has('gui_running')
  if exists('g:base16_shell_path')
    execute 'silent !/bin/sh '.g:base16_shell_path.'/base16-atelier-cave.sh'
  endif
endif

" GUI color definitions
let g:base16_gui00 = '19171c'
let g:base16_gui01 = '26232a'
let g:base16_gui02 = '585260'
let g:base16_gui03 = '655f6d'
let g:base16_gui04 = '7e7887'
let g:base16_gui05 = '8b8792'
let g:base16_gui06 = 'e2dfe7'
let g:base16_gui07 = 'efecf4'
let g:base16_gui08 = 'be4678'
let g:base16_gui09 = 'aa573c'
let g:base16_gui0A = 'a06e3b'
let g:base16_gui0B = '2a9292'
let g:base16_gui0C = '398bc6'
let g:base16_gui0D = '576ddb'
let g:base16_gui0E = '955ae7'
let g:base16_gui0F = 'bf40bf'

" Terminal color definitions
let g:base16_cterm00 = '00'
let g:base16_cterm03 = '08'
let g:base16_cterm05 = '07'
let g:base16_cterm07 = '15'
let g:base16_cterm08 = '01'
let g:base16_cterm0A = '03'
let g:base16_cterm0B = '02'
let g:base16_cterm0C = '06'
let g:base16_cterm0D = '04'
let g:base16_cterm0E = '05'
if exists('base16colorspace') && base16colorspace == '256'
  let g:base16_cterm01 = '18'
  let g:base16_cterm02 = '19'
  let g:base16_cterm04 = '20'
  let g:base16_cterm06 = '21'
  let g:base16_cterm09 = '16'
  let g:base16_cterm0F = '17'
else
  let g:base16_cterm01 = '10'
  let g:base16_cterm02 = '11'
  let g:base16_cterm04 = '12'
  let g:base16_cterm06 = '13'
  let g:base16_cterm09 = '09'
  let g:base16_cterm0F = '14'
endif

" Neovim terminal colours
if has('nvim')
  let g:terminal_color_0 =  '#19171c'
  let g:terminal_color_1 =  '#be4678'
  let g:terminal_color_2 =  '#2a9292'
  let g:terminal_color_3 =  '#a06e3b'
  let g:terminal_color_4 =  '#576ddb'
  let g:terminal_color_5 =  '#955ae7'
  let g:terminal_color_6 =  '#398bc6'
  let g:terminal_color_7 =  '#8b8792'
  let g:terminal_color_8 =  '#655f6d'
  let g:terminal_color_9 =  '#be4678'
  let g:terminal_color_10 = '#2a9292'
  let g:terminal_color_11 = '#a06e3b'
  let g:terminal_color_12 = '#576ddb'
  let g:terminal_color_13 = '#955ae7'
  let g:terminal_color_14 = '#398bc6'
  let g:terminal_color_15 = '#efecf4'
  let g:terminal_color_background = g:terminal_color_0
  let g:terminal_color_foreground = g:terminal_color_5
  if &background == 'light'
    let g:terminal_color_background = g:terminal_color_7
    let g:terminal_color_foreground = g:terminal_color_2
  endif
elseif has('terminal')
  let g:terminal_ansi_colors = [
        \ '#19171c',
        \ '#be4678',
        \ '#2a9292',
        \ '#a06e3b',
        \ '#576ddb',
        \ '#955ae7',
        \ '#398bc6',
        \ '#8b8792',
        \ '#655f6d',
        \ '#be4678',
        \ '#2a9292',
        \ '#a06e3b',
        \ '#576ddb',
        \ '#955ae7',
        \ '#398bc6',
        \ '#efecf4',
        \ ]
endif

" Theme setup
hi clear
syntax reset
let g:colors_name = 'base16-atelier-cave'

" Highlighting function
" Optional variables are attributes and guisp
function! Base16hi(group, guifg, guibg, ctermfg, ctermbg, ...)
  let l:attr = get(a:, 1, '')
  let l:guisp = get(a:, 2, '')

  if a:guifg != ''
    exec 'hi ' . a:group . ' guifg=#' . a:guifg
  endif
  if a:guibg != ''
    exec 'hi ' . a:group . ' guibg=#' . a:guibg
  endif
  if a:ctermfg != ''
    exec 'hi ' . a:group . ' ctermfg=' . a:ctermfg
  endif
  if a:ctermbg != ''
    exec 'hi ' . a:group . ' ctermbg=' . a:ctermbg
  endif
  if l:attr != ''
    exec 'hi ' . a:group . ' gui=' . l:attr . ' cterm=' . l:attr
  endif
  if l:guisp != ''
    exec 'hi ' . a:group . ' guisp=#' . l:guisp
  endif
endfunction

" Vim editor colors
call Base16hi('Normal',        g:base16_gui05, g:base16_gui00, g:base16_cterm05, g:base16_cterm00, '', '')
call Base16hi('Bold',          '', '', '', '', 'bold', '')
call Base16hi('Debug',         g:base16_gui08, '', g:base16_cterm08, '', '', '')
call Base16hi('Directory',     g:base16_gui0D, '', g:base16_cterm0D, '', '', '')
call Base16hi('Error',         g:base16_gui00, g:base16_gui08, g:base16_cterm00, g:base16_cterm08, '', '')
call Base16hi('ErrorMsg',      g:base16_gui08, g:base16_gui00, g:base16_cterm08, g:base16_cterm00, '', '')
call Base16hi('Exception',     g:base16_gui08, '', g:base16_cterm08, '', '', '')
call Base16hi('FoldColumn',    g:base16_gui0C, g:base16_gui01, g:base16_cterm0C, g:base16_cterm01, '', '')
call Base16hi('Folded',        g:base16_gui03, g:base16_gui01, g:base16_cterm03, g:base16_cterm01, '', '')
call Base16hi('IncSearch',     g:base16_gui01, g:base16_gui09, g:base16_cterm01, g:base16_cterm09, 'none', '')
call Base16hi('Italic',        '', '', '', '', 'none', '')
call Base16hi('Macro',         g:base16_gui08, '', g:base16_cterm08, '', '', '')
call Base16hi('MatchParen',    '', g:base16_gui03, '', g:base16_cterm03,  '', '')
call Base16hi('ModeMsg',       g:base16_gui0B, '', g:base16_cterm0B, '', '', '')
call Base16hi('MoreMsg',       g:base16_gui0B, '', g:base16_cterm0B, '', '', '')
call Base16hi('Question',      g:base16_gui0D, '', g:base16_cterm0D, '', '', '')
call Base16hi('Search',        g:base16_gui01, g:base16_gui0A, g:base16_cterm01, g:base16_cterm0A,  '', '')
call Base16hi('Substitute',    g:base16_gui01, g:base16_gui0A, g:base16_cterm01, g:base16_cterm0A, 'none', '')
call Base16hi('SpecialKey',    g:base16_gui03, '', g:base16_cterm03, '', '', '')
call Base16hi('TooLong',       g:base16_gui08, '', g:base16_cterm08, '', '', '')
call Base16hi('Underlined',    g:base16_gui08, '', g:base16_cterm08, '', '', '')
call Base16hi('Visual',        '', g:base16_gui02, '', g:base16_cterm02, '', '')
call Base16hi('VisualNOS',     g:base16_gui08, '', g:base16_cterm08, '', '', '')
call Base16hi('WarningMsg',    g:base16_gui08, '', g:base16_cterm08, '', '', '')
call Base16hi('WildMenu',      g:base16_gui07, g:base16_gui02, g:base16_cterm07, g:base16_cterm02, '', '')
call Base16hi('Title',         g:base16_gui0D, '', g:base16_cterm0D, '', 'none', '')
call Base16hi('Conceal',       g:base16_gui0D, g:base16_gui00, g:base16_cterm0D, g:base16_cterm00, '', '')
call Base16hi('Cursor',        g:base16_gui00, g:base16_gui05, g:base16_cterm00, g:base16_cterm05, '', '')
call Base16hi('NonText',       g:base16_gui03, '', g:base16_cterm03, '', '', '')
call Base16hi('LineNr',        g:base16_gui03, g:base16_gui01, g:base16_cterm03, g:base16_cterm01, '', '')
call Base16hi('SignColumn',    g:base16_gui03, g:base16_gui01, g:base16_cterm03, g:base16_cterm01, '', '')
call Base16hi('StatusLine',    g:base16_gui04, g:base16_gui02, g:base16_cterm04, g:base16_cterm02, 'none', '')
call Base16hi('StatusLineNC',  g:base16_gui03, g:base16_gui01, g:base16_cterm03, g:base16_cterm01, 'none', '')
call Base16hi('VertSplit',     g:base16_gui02, g:base16_gui02, g:base16_cterm02, g:base16_cterm02, 'none', '')
call Base16hi('ColorColumn',   '', g:base16_gui01, '', g:base16_cterm01, 'none', '')
call Base16hi('CursorColumn',  '', g:base16_gui01, '', g:base16_cterm01, 'none', '')
call Base16hi('CursorLine',    '', g:base16_gui01, '', g:base16_cterm01, 'none', '')
call Base16hi('CursorLineNr',  g:base16_gui04, g:base16_gui01, g:base16_cterm04, g:base16_cterm01, '', '')
call Base16hi('QuickFixLine',  '', g:base16_gui01, '', g:base16_cterm01, 'none', '')
call Base16hi('PMenu',         g:base16_gui05, g:base16_gui01, g:base16_cterm05, g:base16_cterm01, 'none', '')
call Base16hi('PMenuSel',      g:base16_gui01, g:base16_gui05, g:base16_cterm01, g:base16_cterm05, '', '')
call Base16hi('TabLine',       g:base16_gui03, g:base16_gui01, g:base16_cterm03, g:base16_cterm01, 'none', '')
call Base16hi('TabLineFill',   g:base16_gui03, g:base16_gui01, g:base16_cterm03, g:base16_cterm01, 'none', '')
call Base16hi('TabLineSel',    g:base16_gui0B, g:base16_gui01, g:base16_cterm0B, g:base16_cterm01, 'none', '')

" Standard syntax highlighting
call Base16hi('Boolean',      g:base16_gui09, '', g:base16_cterm09, '', '', '')
call Base16hi('Character',    g:base16_gui08, '', g:base16_cterm08, '', '', '')
call Base16hi('Comment',      g:base16_gui03, '', g:base16_cterm03, '', '', '')
call Base16hi('Conditional',  g:base16_gui0E, '', g:base16_cterm0E, '', '', '')
call Base16hi('Constant',     g:base16_gui09, '', g:base16_cterm09, '', '', '')
call Base16hi('Define',       g:base16_gui0E, '', g:base16_cterm0E, '', 'none', '')
call Base16hi('Delimiter',    g:base16_gui0F, '', g:base16_cterm0F, '', '', '')
call Base16hi('Float',        g:base16_gui09, '', g:base16_cterm09, '', '', '')
call Base16hi('Function',     g:base16_gui0D, '', g:base16_cterm0D, '', '', '')
call Base16hi('Identifier',   g:base16_gui08, '', g:base16_cterm08, '', 'none', '')
call Base16hi('Include',      g:base16_gui0D, '', g:base16_cterm0D, '', '', '')
call Base16hi('Keyword',      g:base16_gui0E, '', g:base16_cterm0E, '', '', '')
call Base16hi('Label',        g:base16_gui0A, '', g:base16_cterm0A, '', '', '')
call Base16hi('Number',       g:base16_gui09, '', g:base16_cterm09, '', '', '')
call Base16hi('Operator',     g:base16_gui05, '', g:base16_cterm05, '', 'none', '')
call Base16hi('PreProc',      g:base16_gui0A, '', g:base16_cterm0A, '', '', '')
call Base16hi('Repeat',       g:base16_gui0A, '', g:base16_cterm0A, '', '', '')
call Base16hi('Special',      g:base16_gui0C, '', g:base16_cterm0C, '', '', '')
call Base16hi('SpecialChar',  g:base16_gui0F, '', g:base16_cterm0F, '', '', '')
call Base16hi('Statement',    g:base16_gui08, '', g:base16_cterm08, '', '', '')
call Base16hi('StorageClass', g:base16_gui0A, '', g:base16_cterm0A, '', '', '')
call Base16hi('String',       g:base16_gui0B, '', g:base16_cterm0B, '', '', '')
call Base16hi('Structure',    g:base16_gui0E, '', g:base16_cterm0E, '', '', '')
call Base16hi('Tag',          g:base16_gui0A, '', g:base16_cterm0A, '', '', '')
call Base16hi('Todo',         g:base16_gui0A, g:base16_gui01, g:base16_cterm0A, g:base16_cterm01, '', '')
call Base16hi('Type',         g:base16_gui0A, '', g:base16_cterm0A, '', 'none', '')
call Base16hi('Typedef',      g:base16_gui0A, '', g:base16_cterm0A, '', '', '')

" Diff highlighting
call Base16hi('DiffAdd',      g:base16_gui0B, g:base16_gui01,  g:base16_cterm0B, g:base16_cterm01, '', '')
call Base16hi('DiffChange',   g:base16_gui03, g:base16_gui01,  g:base16_cterm03, g:base16_cterm01, '', '')
call Base16hi('DiffDelete',   g:base16_gui08, g:base16_gui01,  g:base16_cterm08, g:base16_cterm01, '', '')
call Base16hi('DiffText',     g:base16_gui0D, g:base16_gui01,  g:base16_cterm0D, g:base16_cterm01, '', '')
call Base16hi('DiffAdded',    g:base16_gui0B, g:base16_gui00,  g:base16_cterm0B, g:base16_cterm00, '', '')
call Base16hi('DiffFile',     g:base16_gui08, g:base16_gui00,  g:base16_cterm08, g:base16_cterm00, '', '')
call Base16hi('DiffNewFile',  g:base16_gui0B, g:base16_gui00,  g:base16_cterm0B, g:base16_cterm00, '', '')
call Base16hi('DiffLine',     g:base16_gui0D, g:base16_gui00,  g:base16_cterm0D, g:base16_cterm00, '', '')
call Base16hi('DiffRemoved',  g:base16_gui08, g:base16_gui00,  g:base16_cterm08, g:base16_cterm00, '', '')

" Spelling highlighting
call Base16hi('SpellBad',     '', '', g:base16_cterm08, 'NONE', 'undercurl', g:base16_gui08)
call Base16hi('SpellLocal',   '', '', g:base16_cterm0D, 'NONE', 'undercurl', g:base16_gui0C)
call Base16hi('SpellCap',     '', '', g:base16_cterm0E, 'NONE', 'undercurl', g:base16_gui0D)
call Base16hi('SpellRare',    '', '', g:base16_cterm0C, 'NONE', 'undercurl', g:base16_gui0E)

" Mail highlighting
call Base16hi('mailQuoted1',  g:base16_gui0A, '', g:base16_cterm0A, '', '', '')
call Base16hi('mailQuoted2',  g:base16_gui0B, '', g:base16_cterm0B, '', '', '')
call Base16hi('mailQuoted3',  g:base16_gui0E, '', g:base16_cterm0E, '', '', '')
call Base16hi('mailQuoted4',  g:base16_gui0C, '', g:base16_cterm0C, '', '', '')
call Base16hi('mailQuoted5',  g:base16_gui0D, '', g:base16_cterm0D, '', '', '')
call Base16hi('mailQuoted6',  g:base16_gui0A, '', g:base16_cterm0A, '', '', '')
call Base16hi('mailURL',      g:base16_gui0D, '', g:base16_cterm0D, '', '', '')
call Base16hi('mailEmail',    g:base16_gui0D, '', g:base16_cterm0D, '', '', '')

" C highlighting
"call Base16hi('cOperator',   g:base16_gui0C, '', g:base16_cterm0C, '', '', '')
"call Base16hi('cPreCondit',  g:base16_gui0E, '', g:base16_cterm0E, '', '', '')
"
"" C# highlighting
"call Base16hi('csClass',                 g:base16_gui0A, '', g:base16_cterm0A, '', '', '')
"call Base16hi('csAttribute',             g:base16_gui0A, '', g:base16_cterm0A, '', '', '')
"call Base16hi('csModifier',              g:base16_gui0E, '', g:base16_cterm0E, '', '', '')
"call Base16hi('csType',                  g:base16_gui08, '', g:base16_cterm08, '', '', '')
"call Base16hi('csUnspecifiedStatement',  g:base16_gui0D, '', g:base16_cterm0D, '', '', '')
"call Base16hi('csContextualStatement',   g:base16_gui0E, '', g:base16_cterm0E, '', '', '')
"call Base16hi('csNewDecleration',        g:base16_gui08, '', g:base16_cterm08, '', '', '')
"
"" CSS highlighting
"call Base16hi('cssBraces',      g:base16_gui05, '', g:base16_cterm05, '', '', '')
"call Base16hi('cssClassName',   g:base16_gui0E, '', g:base16_cterm0E, '', '', '')
"call Base16hi('cssColor',       g:base16_gui0C, '', g:base16_cterm0C, '', '', '')
"
"" Git highlighting
"call Base16hi('gitcommitOverflow',       g:base16_gui08, '', g:base16_cterm08, '', '', '')
"call Base16hi('gitcommitSummary',        g:base16_gui0B, '', g:base16_cterm0B, '', '', '')
"call Base16hi('gitcommitComment',        g:base16_gui03, '', g:base16_cterm03, '', '', '')
"call Base16hi('gitcommitUntracked',      g:base16_gui03, '', g:base16_cterm03, '', '', '')
"call Base16hi('gitcommitDiscarded',      g:base16_gui03, '', g:base16_cterm03, '', '', '')
"call Base16hi('gitcommitSelected',       g:base16_gui03, '', g:base16_cterm03, '', '', '')
"call Base16hi('gitcommitHeader',         g:base16_gui0E, '', g:base16_cterm0E, '', '', '')
"call Base16hi('gitcommitSelectedType',   g:base16_gui0D, '', g:base16_cterm0D, '', '', '')
"call Base16hi('gitcommitUnmergedType',   g:base16_gui0D, '', g:base16_cterm0D, '', '', '')
"call Base16hi('gitcommitDiscardedType',  g:base16_gui0D, '', g:base16_cterm0D, '', '', '')
"call Base16hi('gitcommitBranch',         g:base16_gui09, '', g:base16_cterm09, '', 'bold', '')
"call Base16hi('gitcommitUntrackedFile',  g:base16_gui0A, '', g:base16_cterm0A, '', '', '')
"call Base16hi('gitcommitUnmergedFile',   g:base16_gui08, '', g:base16_cterm08, '', 'bold', '')
"call Base16hi('gitcommitDiscardedFile',  g:base16_gui08, '', g:base16_cterm08, '', 'bold', '')
"call Base16hi('gitcommitSelectedFile',   g:base16_gui0B, '', g:base16_cterm0B, '', 'bold', '')
"
"" HTML highlighting
"call Base16hi('htmlBold',    g:base16_gui0A, '', g:base16_cterm0A, '', '', '')
"call Base16hi('htmlItalic',  g:base16_gui0E, '', g:base16_cterm0E, '', '', '')
"call Base16hi('htmlEndTag',  g:base16_gui05, '', g:base16_cterm05, '', '', '')
"call Base16hi('htmlTag',     g:base16_gui05, '', g:base16_cterm05, '', '', '')
"
"" JavaScript highlighting
"call Base16hi('javaScript',        g:base16_gui05, '', g:base16_cterm05, '', '', '')
"call Base16hi('javaScriptBraces',  g:base16_gui05, '', g:base16_cterm05, '', '', '')
"call Base16hi('javaScriptNumber',  g:base16_gui09, '', g:base16_cterm09, '', '', '')
"" pangloss/vim-javascript highlighting
"call Base16hi('jsOperator',          g:base16_gui0D, '', g:base16_cterm0D, '', '', '')
"call Base16hi('jsStatement',         g:base16_gui0E, '', g:base16_cterm0E, '', '', '')
"call Base16hi('jsReturn',            g:base16_gui0E, '', g:base16_cterm0E, '', '', '')
"call Base16hi('jsThis',              g:base16_gui08, '', g:base16_cterm08, '', '', '')
"call Base16hi('jsClassDefinition',   g:base16_gui0A, '', g:base16_cterm0A, '', '', '')
"call Base16hi('jsFunction',          g:base16_gui0E, '', g:base16_cterm0E, '', '', '')
"call Base16hi('jsFuncName',          g:base16_gui0D, '', g:base16_cterm0D, '', '', '')
"call Base16hi('jsFuncCall',          g:base16_gui0D, '', g:base16_cterm0D, '', '', '')
"call Base16hi('jsClassFuncName',     g:base16_gui0D, '', g:base16_cterm0D, '', '', '')
"call Base16hi('jsClassMethodType',   g:base16_gui0E, '', g:base16_cterm0E, '', '', '')
"call Base16hi('jsRegexpString',      g:base16_gui0C, '', g:base16_cterm0C, '', '', '')
"call Base16hi('jsGlobalObjects',     g:base16_gui0A, '', g:base16_cterm0A, '', '', '')
"call Base16hi('jsGlobalNodeObjects', g:base16_gui0A, '', g:base16_cterm0A, '', '', '')
"call Base16hi('jsExceptions',        g:base16_gui0A, '', g:base16_cterm0A, '', '', '')
"call Base16hi('jsBuiltins',          g:base16_gui0A, '', g:base16_cterm0A, '', '', '')
"
"" Markdown highlighting
"call Base16hi('markdownCode',              g:base16_gui0B, '', g:base16_cterm0B, '', '', '')
"call Base16hi('markdownError',             g:base16_gui05, g:base16_gui00, g:base16_cterm05, g:base16_cterm00, '', '')
"call Base16hi('markdownCodeBlock',         g:base16_gui0B, '', g:base16_cterm0B, '', '', '')
"call Base16hi('markdownHeadingDelimiter',  g:base16_gui0D, '', g:base16_cterm0D, '', '', '')
"
"" PHP highlighting
"call Base16hi('phpMemberSelector',  g:base16_gui05, '', g:base16_cterm05, '', '', '')
"call Base16hi('phpComparison',      g:base16_gui05, '', g:base16_cterm05, '', '', '')
"call Base16hi('phpParent',          g:base16_gui05, '', g:base16_cterm05, '', '', '')
"call Base16hi('phpMethodsVar',      g:base16_gui0C, '', g:base16_cterm0C, '', '', '')
"
"" Python highlighting
"call Base16hi('pythonOperator',  g:base16_gui0E, '', g:base16_cterm0E, '', '', '')
"call Base16hi('pythonRepeat',    g:base16_gui0E, '', g:base16_cterm0E, '', '', '')
"call Base16hi('pythonInclude',   g:base16_gui0E, '', g:base16_cterm0E, '', '', '')
"call Base16hi('pythonStatement', g:base16_gui0E, '', g:base16_cterm0E, '', '', '')
"
"" Ruby highlighting
"call Base16hi('rubyAttribute',               g:base16_gui0D, '', g:base16_cterm0D, '', '', '')
"call Base16hi('rubyConstant',                g:base16_gui0A, '', g:base16_cterm0A, '', '', '')
"call Base16hi('rubyInterpolationDelimiter',  g:base16_gui0F, '', g:base16_cterm0F, '', '', '')
"call Base16hi('rubyRegexp',                  g:base16_gui0C, '', g:base16_cterm0C, '', '', '')
"call Base16hi('rubySymbol',                  g:base16_gui0B, '', g:base16_cterm0B, '', '', '')
"call Base16hi('rubyStringDelimiter',         g:base16_gui0B, '', g:base16_cterm0B, '', '', '')
"
"" SASS highlighting
"call Base16hi('sassidChar',     g:base16_gui08, '', g:base16_cterm08, '', '', '')
"call Base16hi('sassClassChar',  g:base16_gui09, '', g:base16_cterm09, '', '', '')
"call Base16hi('sassInclude',    g:base16_gui0E, '', g:base16_cterm0E, '', '', '')
"call Base16hi('sassMixing',     g:base16_gui0E, '', g:base16_cterm0E, '', '', '')
"call Base16hi('sassMixinName',  g:base16_gui0D, '', g:base16_cterm0D, '', '', '')
"
"" Java highlighting
"call Base16hi('javaOperator',     g:base16_gui0D, '', g:base16_cterm0D, '', '', '')
