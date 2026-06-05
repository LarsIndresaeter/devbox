" ===============================================
" |
" |  connects coc.nvim to the clangd language server
" |
" |  https://github.com/clangd/coc-clangd
" |
" ===============================================

" clang-format default style
let g:clang_format#code_style="WebKit"
let g:clang_format#enable_fallback_style="1"
let g:clang_format#detect_style_file="1"
" let g:clang_format#auto_format="1"
" let g:clang_format#auto_format_on_insert_leave="1"

" my modifications
let g:clang_format#style_options = {
            \ "AccessModifierOffset" : -4,
            \ "AllowShortIfStatementsOnASingleLine" : "false",
            \ "AlwaysBreakTemplateDeclarations" : "true",
            \ "Standard" : "C++11",
            \ "BreakBeforeBraces" : "Stroustrup"}

