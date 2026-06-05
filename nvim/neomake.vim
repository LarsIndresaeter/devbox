" ===============================================
" |
" |  Neomake is a plugin for Vim/Neovim to asynchronously run programs.
" |
" |  https://github.com/neomake/neomake
" |
" ===============================================

call neomake#configure#automake('w')
call neomake#configure#automake('nw', 750)
call neomake#configure#automake('rw', 1000)
call neomake#configure#automake('nrwi', 500)

