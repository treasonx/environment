"""""""""""""""""""""""""""""""
"                             "
"          MISC VIM           "
"                             " 
"""""""""""""""""""""""""""""""

set history=700                             "Sets how many lines of history VIM has to remember
set ttimeoutlen=50                          "Speed up O etc in the Terminal
set autoread                                "Set to auto read when a file is changed from the outside
set bs=2                                    "allow backspace
set scrolloff=6                             "start scrolling 5 lines before edge of viewport
set pastetoggle=<f10>                       "Better paste behavior
autocmd! bufwritepost vimrc source ~/.vimrc "When vimrc is edited, reload it

"Search Options
set ignorecase "Ignore case when searching
set incsearch  "Make search act like search in modern browsers
set magic      "Set magic on, for regular expressions

"Enable filetype plugin
filetype plugin on
filetype indent on
filetype on
syntax enable

"Turn backup off
set nobackup
set nowb
set noswapfile

"Enable mouse support in xterm 
set mouse=a
set ttymouse=xterm2

"Load Project specific .vimrc 
set exrc   "enable per-directory .vimrc files
set secure "disable unsafe commands in local .vimrc files

"""""""""""""""""""""""""""""""
"                             " 
"     Spacing and Lines       "
"                             "
"""""""""""""""""""""""""""""""

set autoindent "auto indent the next line

"Tabs
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
if $WORK
  au BufRead,BufNewFile ~/projects/spx-web/* set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab
  au BufRead,BufNewFile ~/projects/swoop-es/* set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab
endif

"Line Wrapping
set ai     "Auto indent
set si     "Smart indet
set wrap   "Wrap lines
