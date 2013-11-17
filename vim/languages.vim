"""""""""""""""""""""""""""""""
"                             "
"          Language           "
"                             "
"""""""""""""""""""""""""""""""

" => Markdown
autocmd FileType markdown set tw=80
autocmd FileType markdown set spell

" => CSS
autocmd FileType css set sw=2
autocmd FileType css set ts=2
autocmd FileType css set sts=2
autocmd FileType css set textwidth=79
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS

" => HTML
autocmd FileType html set sw=2
autocmd FileType html set ts=2
autocmd FileType html set sts=2
autocmd FileType html set textwidth=0
autocmd FileType html setlocal omnifunc=htmlcomplete#CompleteTags

" => JavaScript
au FileType javascript setl fen
au FileType javascript setl nocindent
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType javascript autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()
autocmd FileType javascript set sw=2
autocmd FileType javascript set ts=2
autocmd FileType javascript set sts=2
autocmd FileType javascript set textwidth=79

" => JSON
au BufNewFile,BufRead *.json set filetype=json
:command! PrettyJSON :call PrettyJSON()

" => GO Lang
set rtp+=$GOROOT/misc/vim

"=> Ruby
autocmd FileType ruby,eruby set filetype=ruby.eruby.chef
