if exists("g:loaded_grepany") || &cp
  finish
endif
let g:loaded_grepany = 1

command! -bang -nargs=* -complete=file Grep     call grepany#grep("grep<bang>",<q-args>)
command! -bang -nargs=* -complete=file GrepAdd  call grepany#grep("grepadd<bang>", <q-args>)
command! -bang -nargs=* -complete=file LGrep    call grepany#grep("lgrep<bang>", <q-args>)
command! -bang -nargs=* -complete=file LGrepAdd call grepany#grep("lgrepadd<bang>", <q-args>)
command! -bang -nargs=* -complete=file GrepFile call grepany#grep("grep<bang> -g", <q-args>)
