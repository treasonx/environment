setlocal foldenable
setlocal nocindent
setlocal shiftwidth=2
setlocal tabstop=2
setlocal softtabstop=2
setlocal textwidth=79
autocmd BufWritePre <buffer> call StripTrailingWhitespaces()
let g:dash_map=["JavaScript", "Node.js", "Lo-Dash", "Express", "Chai", "Mongoose", "AngularJS", "HTML", "CSS"]
