"""""""""""""""""""""""""""""""
"                             "
"         Leader Key          "
"                             "  
"""""""""""""""""""""""""""""""
"close buffer
nnoremap <leader>] :bw <cr>                    
"toggle nerdtree 
nnoremap <leader>n :NERDTreeToggle<cr>        
"Nice File Diff
nnoremap <leader>d :VCSVimDiff <cr>           
"Commit Changes
nnoremap <leader>c :VCSCommit <cr>             
"GIT Status
nnoremap <leader>s :Gstatus <cr>              
"CtrlP window
nnoremap <leader>t :CtrlP<cr>

"Open last buffer
nnoremap <C-e> :e#<CR>
"Next Previous buffers
nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprev<CR>
"Clear matches instead of searching for kdjlghsldkfgjhsfkjgh
noremap <Leader><Space> :noh<CR>:call clearmatches()<CR>

"Change Tab Spacing
nnoremap <leader>2 <esc>:set expandtab tabstop=2 softtabstop=2 shiftwidth=2<cr>
nnoremap <leader>4 <esc>:set expandtab tabstop=4 softtabstop=4 shiftwidth=4<cr>
nnoremap <leader>8 <esc>:set expandtab tabstop=8 softtabstop=8 shiftwidth=8<cr>
