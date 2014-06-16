" Airline theme settings
let g:airline_powerline_fonts = 1
let g:airline_theme="badwolf"

"Show buffer list 
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline#extensions#tabline#buffer_min_count = 2

"Show whitespace errors
let g:airline#extensions#whitespace#enabled = 1

" Tmux 
let g:airline#extensions#tmuxline#enabled = 1
let g:airline#extensions#tmuxline#snapshot_file = "~/environment/tmux/statusline-colors.conf"


