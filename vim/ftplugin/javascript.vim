setlocal foldenable
setlocal nocindent
setlocal shiftwidth=2
setlocal tabstop=2
setlocal softabstop=2
setlocal textwidth=79
autocmd BufWritePre <buffer> call StripTrailingWhitespaces()
