"""""""""""""""""""""""""""""""
"                             "   
"        Basic Setup          "   
"                             "    
"""""""""""""""""""""""""""""""

set nocompatible               "be iMproved
filetype off                   "required!
set enc=utf-8                  "utf8 mode for chromebook
set hidden

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
Plug 'Raimondi/delimitMate'             "Go to the closing character / tag "
Plug 'lukaszb/vim-web-indent'           "Better js and html auto indent    "
Plug 'hallison/vim-markdown'            "Markdown highlighting             "
Plug 'vim-scripts/VOoM'                 "VIM outliner                      "
Plug 'kshenoy/vim-signature'            "show line marks                   "
Plug 'tpope/vim-commentary'             "comment and uncomment things      "
Plug 'tpope/vim-surround'               "Change surrounding parens, quotes,"
Plug 'easymotion/vim-easymotion'        "easier way to move around         "
Plug 'christoomey/vim-tmux-navigator'   "navigate vim and tmux splits      "
Plug 'vim-airline/vim-airline'          "Better status line                "
Plug 'vim-airline/vim-airline-themes'   "Status line themes                "
Plug 'edkolev/tmuxline.vim'             "Keep tmux in sync with airline    "
Plug 'mhinz/vim-signify'                "VCS status in the gutter          "
Plug 'mattn/emmet-vim'                  "HTML auto complete                "
Plug 'dansomething/vim-eclim'           "eclim                             "
Plug 'ngemily/vim-vp4'                  "p4                                "
Plug 'morhetz/gruvbox'                  "Theme                             " 
Plug 'mileszs/ack.vim'                  "ack for vim                       " 
Plug 'vim-ctrlspace/vim-ctrlspace'      "Fuzzy finder for buffers and tabs "
Plug 'kien/ctrlp.vim'                   "Fuzzy finder for files            "
Plug 'nathanaelkane/vim-indent-guides'  "Indent Guides                     "
Plug 'vim-scripts/mru.vim'              "File MRU                          "
Plug 'ervandew/supertab'                "Autocomplete                      "
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

"""""""""""""""""""""""""""""""
"                             "
"         Appearance          "
"                             "     
"""""""""""""""""""""""""""""""

"Color Scheme stuffs
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
end
colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
let g:gruvbox_improved_strings = 1
let g:gruvbox_improved_warning = 1

set ruler          "Always show current position
set cul            "highlight current line
set hlsearch       "highlight search
set cmdheight=2    "The commandbar height
set relativenumber "relative line numbers
set number
set nolazyredraw   "Don't redraw while executing macros 
set showmatch      "Show matching bracets when text indicator is over them
set laststatus=2   "always have a status bar
set showcmd        "show information about the current command
syntax enable      "Enable syntax hl
set colorcolumn=80 "Mark the column 80

highlight Pmenu ctermbg=8 guibg=#606060
highlight PmenuSel ctermbg=1 guifg=#dddd00 guibg=#1f82cd
highlight PmenuSbar ctermbg=0 guibg=#d6d6d6

"Stop beeping at me bro
set noerrorbells 
set vb 
set t_vb="."

au BufNewFile,BufRead *.ejs set filetype=html
au BufNewFile,BufRead *.cmp set filetype=html

" enable indentation
set breakindent

" ident by an additional 2 characters on wrapped lines, when line >= 40 characters, put 'showbreak' at start of line
set breakindentopt=shift:2,min:40,sbr

" append '>>' to indent
set showbreak=>>

"""""""""""""""""""""""""""""""
"                             "
"         Leader Key          "
"                             "  
"""""""""""""""""""""""""""""""
"toggle nerdtree 
nnoremap <leader>n :NERDTreeToggle<cr>        
nnoremap <leader>b :NERDTreeFind<cr>        
"Nice File Diff
nnoremap <leader>d :SignifyDiff <cr>           
"Next Previous buffers
nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprev<CR>
"Clear matches instead of searching for kdjlghsldkfgjhsfkjgh
noremap <Leader><Space> :noh<CR>:call clearmatches()<CR>

"Change Tab Spacing
nnoremap <leader>2 <esc>:set expandtab tabstop=2 softtabstop=2 shiftwidth=2<cr>
nnoremap <leader>4 <esc>:set expandtab tabstop=4 softtabstop=4 shiftwidth=4<cr>
nnoremap <leader>8 <esc>:set expandtab tabstop=8 softtabstop=8 shiftwidth=8<cr>

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
set guitablabel=\[%N\]\ %t\ %M 

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

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif


" don't close vim when we're closing the last buffer
cabbrev q <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'close' : 'q')<CR>


"""""""""""""""""""""""""""""""
"                             "
"      Plugin Config          "
"                             "  
"""""""""""""""""""""""""""""""

" Airline theme settings
let g:airline_powerline_fonts = 0
let g:airline_theme="gruvbox"
let g:airline#extensions#tabline#formatter = 'unique_tail'

"Show buffer list 
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline#extensions#tabline#buffer_min_count = 2
let g:airline#extensions#whitespace#enabled = 1

" Tmux 
let g:airline#extensions#tmuxline#enabled = 1
let g:airline#extensions#tmuxline#snapshot_file = "~/environment/tmux/statusline-colors.conf"

" CTRL-SPACE config
let g:CtrlSpaceDefaultMappingKey = "<C-space> "
if executable("ag")
    let g:CtrlSpaceGlobCommand = 'ag -l --nocolor -g ""'
endif
let g:CtrlSpaceSearchTiming = 500
let g:airline_exclude_preview = 1
let g:CtrlSpaceIgnoredFiles = '\v(tmp|temp|target)[\/]'

"=> Lokaltog/vim-easymotion.git
hi link EasyMotionTarget ErrorMsg
hi link EasyMotionShade  Comment

" => scrooloose/syntastic
let g:syntastic_enable_signs=1
let g:syntastic_error_symbol="✗"
let g:syntastic_warning_symbol="⚠"
let g:syntastic_enable_balloons = 1
let g:syntastic_enable_highlighting = 1 

" vim-indent
let g:indent_guides_auto_colors = 1
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2
let g:indent_guides_color_change_percent = 3

" SuperTab
let g:SuperTabDefaultCompletionType = 'context'


" Work Settings
let path = getcwd()
if path =~ "blt"
  au BufNewFile,BufRead *.cmp set filetype=html
  au BufNewFile,BufRead *.app set filetype=html
  au BufNewFile,BufRead *.auradoc set filetype=xml

  " ** P4 commands ** 
  " Auto Prompt to edit file on change
  let g:vp4_prompt_on_write = 1
  " Simplified Annotate
  let g:vp4_annotate_simple = 1
  " move changes to CL
  cnoreabbrev p4m Vp4Reopen   
  " edit current file
  cnoreabbrev p4e Vp4Edit   
  " revert changes for current buffer
  cnoreabbrev p4r Vp4Revert   
  " mark for delete and close current buffer
  cnoreabbrev p4delete Vp4Delete
  " annotate a visual selection of lines
  cnoreabbrev p4a Vp4Annotate
  " diff against repo version
  cnoreabbrev p4diff Vp4Diff
  " add current file
  cnoreabbrev p4add Vp4Add
  " open log of changes for file
  cnoreabbrev p4log Vp4Filelog

  "CtrlP window
  nnoremap <leader>t :LocateFile<cr>

  " ** Java Navigation Shortcuts ** 
  " Jump to implementation 
  nnoremap <leader>i :JavaSearch -p <C-R><C-W> -t all -x implementors -a edit<cr>
  " Jump to declaration
  " nnoremap <leader>d :JavaSearch -p <C-R><C-W> -t all -x declarations -a edit<cr>
  " Show references
  nnoremap <leader>r :JavaSearch -p <C-R><C-W> -t all -x references -a edit<cr>
  " Find Element
  nnoremap <leader>g :JavaSearchContext -a edit<cr>
  " Import 
  nnoremap <leader>a :JavaImport <cr>
  " Show call hierarchy
  nnoremap <leader>c :JavaCallHierarchy! <cr>
  " Show Outline
  nnoremap <leader>o :JavaOutline <cr>

  "Set tabs
  set expandtab tabstop=4 softtabstop=4 shiftwidth=4

endif

