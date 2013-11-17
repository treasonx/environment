"""""""""""""""""""""""""""""""
"                             "
"         Appearance          "
"                             "     
"""""""""""""""""""""""""""""""

"Color Scheme stuffs
set background=dark
let g:solarized_termtrans=1
let g:solarized_termcolors=256
let g:solarized_contrast="high"
let g:solarized_visibility="high"
colorscheme solarized

set ruler          "Always show current position
set cul            "highlight current line
set hlsearch       "highlight search
set cmdheight=2    "The commandbar height
set relativenumber "relative line numbers
set number
set nohidden       "dont unload my buffer
set nolazyredraw   "Don't redraw while executing macros 
set showmatch      "Show matching bracets when text indicator is over them
set laststatus=2   "always have a status bar
set showcmd        "show information about the current command
syntax enable      "Enable syntax hl

highlight Pmenu ctermbg=8 guibg=#606060
highlight PmenuSel ctermbg=1 guifg=#dddd00 guibg=#1f82cd
highlight PmenuSbar ctermbg=0 guibg=#d6d6d6

"Stop beeping at me bro
set noerrorbells 
set vb 
set t_vb="."
