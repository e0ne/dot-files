" Pathogen load
filetype off

"call pathogen#infect()
"call pathogen#helptags()

filetype plugin indent on
syntax on

let g:pymode_options = 0
let g:pymode_lint_write = 0
let g:pymode_folding = 0 
"let g:pymode_rope_vim_completion = 0 


let g:tagbar_autofocus = 1
let g:tagbar_sort = 0 "tagbar shows tags in order of they created in file
let g:tagbar_foldlevel = 0 "close tagbar folds by default

fun! DetectTemplate()
    let n = 1
    while n < line("$")
        if getline(n) =~ '{%' || getline(n) =~ '{{'
            set ft=htmldjango
            return
        endif
        let n = n + 1
    endwhile
    set ft=html "default html
endfun

autocmd BufNewFile,BufRead *.html call DetectTemplate()
autocmd FileType python setlocal ts=4 sts=4 sw=4

filetype plugin on
let g:pydiction_location = '/Users/e0ne/.vim/bundle/pydiction/complete-dict'

"powerline
set rtp+=/Users/e0ne/.vim/bundle/powerline/powerline/bindings/vim
" Always show statusline
set laststatus=2
set t_Co=256
