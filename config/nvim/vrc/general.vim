colorscheme neon

syntax on

filetype plugin indent on
filetype plugin on
autocmd BufRead,BufNewFile *.tex set filetype=tex

set mouse=a
set clipboard+=unnamedplus
set noshowmode
set nrformats+=alpha
set nowrap
set termguicolors
set path+=**
set relativenumber number
set softtabstop=2 tabstop=2 shiftwidth=2 expandtab
set encoding=utf-8
set nobackup
set nowritebackup
set undofile
set undodir=~/.cache/nvim/undodir
set hlsearch
set ignorecase
set smartcase
set foldmethod=syntax
set timeoutlen=500
set scrolloff=999
set guifont=FiraCode-Light:h12

if exists("g:neovide")
  let g:neovide_refresh_rate=30
  let g:neovide_transparency=0.7
  let g:neovide_floating_blur_amount_x=30
  let g:neovide_floating_blur_amount_y=30
  let g:neovide_cursor_antialiasing=v:true
  let g:neovide_cursor_vfx_mode="railgun"
  let g:neovide_cursor_vfx_particle_lifetime=5
  let g:neovide_cursor_vfx_particle_density=7.0
  let g:neovide_cursor_vfx_particle_curl=1.0
endif
