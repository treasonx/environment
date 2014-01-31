"""""""""""""""""""""""""""""""
"                             "
"      Remap Commands         "
"                             "  
"""""""""""""""""""""""""""""""

:command! W w "just write the file!

"time to grow up
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
nnoremap \ :Ag<SPACE>
