" => kien/ctrlp.vim
let g:ctrlp_cmd = 'CtrlP'
if executable("ag")
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0
endif
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/.tmp/*,*/.sass-cache/*,*/node_modules/*,*.keep,*.DS_Store,*/.git/*

"show window at top of screen
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_match_window_reversed = 0
