""INDENT
" let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_fileTypeExclude = ["help", "undotree", "diff"]
let g:indentLine_bufTypeExclude = ["help", "terminal"]
let g:indentLine_setConceal = 1
let g:indentLine_concealcursor = "incv"
let g:indentLine_conceallevel = 1
" let g:indentLine_char = '|'
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = "•"

" hexokinase
let g:Hexokinase_highlighters=['backgroundfull', 'virtual']

" Lightline Theme
let g:lightline = { 'colorscheme' : 'wombat' }

" coc-snippets
let g:coc_snippet_next = '<tab>'
let g:coc_global_extensions =[
  \ 'coc-snippets',
  \ 'coc-pairs']

" vimtex
let g:vimtex_view_method = 'zathura'
