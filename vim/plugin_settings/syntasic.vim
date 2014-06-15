" => scrooloose/syntastic
let g:syntastic_enable_signs=1
let g:syntastic_error_symbol="✗"
let g:syntastic_warning_symbol="⚠"
let g:syntastic_enable_balloons = 1
let g:syntastic_enable_highlighting = 1 

let g:syntastic_typescript_tsc_args="--module amd --target ES5 --noImplicitAny"
let g:syntastic_typescript_tsc_post_args="--outDir /tmp/tsc"
let g:syntastic_typescript_checkers=["tslint"]
