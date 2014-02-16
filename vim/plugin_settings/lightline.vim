let g:lightline = {
\ 'colorscheme': 'jellybeans',
	\ 'component': {
	\   'readonly': '%{&filetype=="help"?"":&readonly?"⭤":""}',
	\   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}'
	\ },
	\ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
	\ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3" }
\ }
