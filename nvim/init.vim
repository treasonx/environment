"""""""""""""""""""""""""""""""
"                             "   
"        Basic Setup          "   
"                             "    
"""""""""""""""""""""""""""""""

set nocompatible               "be iMproved
filetype off                   "required!
set enc=utf-8                  "utf8 mode for chromebook

"""""""""""""""""""""""""""""""
"                             "   
"        Plugins              "   
"                             "    
"""""""""""""""""""""""""""""""

call plug#begin('~/.config/nvim/plugged')
Plug 'vim-scripts/L9'                   "VIMScript Programming Libraries   "
Plug 'MarcWeber/vim-addon-mw-utils'     "VIMScript utils                   "
Plug 'tomtom/tlib_vim'                  "VIMScript tlib utils              "
Plug 'scrooloose/nerdtree'              "File Manager                      "
Plug 'scrooloose/syntastic'             "Static Analysis                   "
Plug 'tmhedberg/matchit'                "Auto insert closing character     "
Plug 'kien/ctrlp.vim'                   "Fuzzy File Finder                 "
Plug 'altercation/vim-colors-solarized' "Color Scheme                      "
Plug 'Raimondi/delimitMate'             "Go to the closing character / tag "
Plug 'JSON.vim'                         "JSON Code highlight               "     
Plug 'lukaszb/vim-web-indent'           "Better js and html auto indent    "
Plug 'hallison/vim-markdown'            "Markdown highlighting             "
Plug 'vim-scripts/VOoM'                 "VIM outliner                      "
Plug 'kshenoy/vim-signature'            "show line marks                   "
Plug 'tpope/vim-commentary'             "comment and uncomment things      "
Plug 'easymotion/vim-easymotion'        "easier way to move around         "
Plug 'rking/ag.vim'                     "grep files using silversearcher   "
Plug 'christoomey/vim-tmux-navigator'   "navigate vim and tmux splits      "
Plug 'bling/vim-airline'                "Better status line                "
Plug 'edkolev/tmuxline.vim'             "Keep tmux in sync with airline    "
Plug 'airblade/vim-gitgutter'           "Git status in the gutter          "
Plug 'mattn/emmet-vim'                  "HTML auto complete                "
Plug 'nathanaelkane/vim-indent-guides'  "Visual indent guides              "
call plug#end()

"""""""""""""""""""""""""""""""
"                             "
"      Custom Functions       "
"                             "    
"""""""""""""""""""""""""""""""

"Clean trailing whitespace on save
function! StripTrailingWhitespaces()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l, c)
endfun

"Format JSON
function! PrettyJSON()
  :%!json
  set filetype=json
endfun
:command! PrettyJSON :call PrettyJSON()

"""""""""""""""""""""""""""""""
"                             "
"         Appearance          "
"                             "     
"""""""""""""""""""""""""""""""

"Color Scheme stuffs
if has('gui_running')
    set background=light
else
    set background=dark
endif
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

au BufNewFile,BufRead *.ejs set filetype=html

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
"set ttymouse=xterm2

"Load Project specific .vimrc 
set exrc   "enable per-directory .vimrc files
set secure "disable unsafe commands in local .vimrc files

"""""""""""""""""""""""""""""""
"                             " 
"     Spacing and Lines       "
"                             "
"""""""""""""""""""""""""""""""

"Tabs
set softtabstop=2
set shiftwidth=2
" controls how the code is displayed
set tabstop=2
set expandtab

"Line Wrapping
set wrap   "Wrap lines

"Use system clipboard
set clipboard=unnamed

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
"set ttymouse=xterm2

"Load Project specific .vimrc 
set exrc   "enable per-directory .vimrc files
set secure "disable unsafe commands in local .vimrc files

"""""""""""""""""""""""""""""""
"                             " 
"     Spacing and Lines       "
"                             "
"""""""""""""""""""""""""""""""

"Tabs
set softtabstop=2
set shiftwidth=2
" controls how the code is displayed
set tabstop=2
set expandtab

"Line Wrapping
set wrap   "Wrap lines

"Use system clipboard
set clipboard=unnamed

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


"""""""""""""""""""""""""""""""
"                             "
"      Plugin Config          "
"                             "  
"""""""""""""""""""""""""""""""

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

"=> Lokaltog/vim-easymotion.git
hi link EasyMotionTarget ErrorMsg
hi link EasyMotionShade  Comment

" => scrooloose/syntastic
let g:syntastic_enable_signs=1
let g:syntastic_error_symbol="✗"
let g:syntastic_warning_symbol="⚠"
let g:syntastic_enable_balloons = 1
let g:syntastic_enable_highlighting = 1 

let g:syntastic_typescript_tsc_args="--module amd --target ES5 --noImplicitAny"
let g:syntastic_typescript_tsc_post_args="--outDir /tmp/tsc"
let g:syntastic_typescript_checkers=["tslint"]

" vim-indent
let g:indent_guides_auto_colors = 0
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=232
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=233


