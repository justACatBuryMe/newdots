autocmd BufWritePost ~/.config/nvim/vrc/plugins.vim source ~/.config/nvim/vrc/plugins.vim
autocmd BufWritePost ~/.config/nvim/vrc/autocompile.vim source ~/.config/nvim/vrc/autocompile.vim
autocmd BufWritePost ~/.config/nvim/vrc/general.vim source ~/.config/nvim/vrc/general.vim
autocmd BufWritePost ~/.config/nvim/vrc/pluginconfig.vim source ~/.config/nvim/vrc/pluginconfig.vim
autocmd BufWritePost ~/.config/nvim/vrc/remaps.vim source ~/.config/nvim/vrc/remaps.vim

autocmd BufWritePost ~/.config/sway/config !swaymsg reload > /dev/null

" remove trailing spaces
autocmd BufWritePre * %s/\s\+$//e
