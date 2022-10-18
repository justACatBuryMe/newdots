let mapleader=" "

" nerdtree
nnoremap <leader>f :NERDTreeToggle<CR>

" comments
nnoremap <leader>/ :Commentary<CR>
vnoremap <leader>/ :Commentary<CR>

" undotree
nnoremap <leader>u :UndotreeToggle<CR>:UndotreeFocus<CR>

" which key
nnoremap <leader> :WhichKey '<leader>'<CR>
vnoremap <leader> :WhichKeyVisual '<leader>'<CR>

" coc
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Shebang
nnoremap <C-s> <ESC>ggO#!/bin/sh<CR><ESC><C-o>:w<CR>:!chmod +x %<CR><CR>

" Terminal
nnoremap <leader>t :terminal<CR>A
tnoremap <leader><ESC> <C-\><C-n>

" " Scroll offset
" nnoremap <leader>s :let &scrolloff=999-&scrolloff<CR>

" Opacity
nnoremap <leader>s+ :let g:neovide_transparency=g:neovide_transparency+0.1<CR>
nnoremap <leader>s- :let g:neovide_transparency=g:neovide_transparency-0.1<CR>
nnoremap <leader>s= :let g:neovide_transparency=0.7<CR>

" folds
nnoremap <CR> za

" brackets
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
inoremap {<Space> {  }<ESC>hi
inoremap (<Space> (  )<ESC>hi

" play with tabs
nnoremap <leader><tab> :tabn<CR>
nnoremap <leader><S-tab> :tabp<CR>
nnoremap <leader>n :tabnew<CR>
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt

" play with splits
nnoremap <leader>v :vsplit<CR>
nnoremap <leader><S-v> :split<CR>
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l

" close stuff
nnoremap Zz :wq<CR>
nnoremap ZZ :wqall<CR>
nnoremap Zq :q<CR>
nnoremap ZQ :qall<CR>

" save
nnoremap <leader>w :w<Space>

" gf and bf to navigate files (girlfriend and boyfriend commands idk sounds cute)
nnoremap bf :bf<CR>

" add lines
nnoremap <leader>o o<ESC>
nnoremap <leader>O O<ESC>

" visual indent fix
vnoremap < <gv
vnoremap > >gv

" multiple buffers
noremap <leader>b :bNext<CR>
noremap <leader><S-b> :bprevious<CR>

command W :execute ':silent w !sudo tee % > /dev/null' | :edit!
