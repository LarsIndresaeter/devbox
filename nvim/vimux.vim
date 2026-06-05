" ===============================================
" |
" |  Run commands in another tmux window
" |
" |  https://github.com/preservim/vimux
" |
" ===============================================

" Prompt for a command to run
map <Leader>vp :VimuxPromptCommand<CR>

" Run last command executed by VimuxRunCommand
map <Leader>vl :VimuxRunLastCommand<CR>

" Zoom the tmux runner pane
map <Leader>vz :VimuxZoomRunner<CR>

" integrate with hub
map <Leader>b :VimuxRunCommand("hbuild -m --cache")<CR>
