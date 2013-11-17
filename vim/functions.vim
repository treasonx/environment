"""""""""""""""""""""""""""""""
"                             "
"      Custom Functions       "
"                             "    
"""""""""""""""""""""""""""""""

"Clean trailing whitespace on save
fun! <SID>StripTrailingWhitespaces()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l, c)
endfun

"Format JSON
fun! PrettyJSON()
  :%!python -m simplejson.tool
  set filetype=json
endfun

"clean html examples
fun! SpxCleanHtml()
  :%s/\sspx-src="[^"]*"/ /g
  :%s/\sspx-style="[^"]*"/ /g
  :%s/\shref="[^"]*"/ href="#"/g
  :%s/\ssrc="[^"]*"/ /g
  :%s/\son[a-zA-Z]*="[^"]*"/ /g
  :g/^\s*$/d 
  :set filetype=html
  :filetype indent on
  execute "normal \<gg=G>"
endfun
:command! SpxCleanHtml :call SpxCleanHtml()
