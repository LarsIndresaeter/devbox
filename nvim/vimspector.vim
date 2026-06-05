" ===============================================
" |
" |  A multi language graphical debugger for Vim
" |
" |  https://github.com/puremourning/vimspector
" |
" ===============================================

let g:vimspector_enable_mappings = 'HUMAN'

nnoremap <leader>dd :call vimspector#Launch()<CR>

nnoremap <leader>de :call vimspector#Reset()<CR>

nmap <leader>dl <Plug>VimspectorStepInto
nmap <leader>dj <Plug>VimspectorStepOver
nmap <leader>dk <Plug>VimspectorStepOut

nmap <leader>drc <Plug>VimspectorRunToCursor
nmap <leader>dbp <Plug>VimspectorToggleBreakpoint
nmap <leader>dcbp <Plug>VimspectorToggleConditionalBreakpoint
