if exists("g:loaded_grepany") || &cp
  finish
endif

let g:loaded_grepany = 1
let g:grepany_format = "%f:%l:%c:%m,%f:%l:%m,%f"

let s:grepany_mappings = {
  \ "t":  "<C-W><CR><C-W>T",
  \ "T":  "<C-W><CR><C-W>TgT<C-W>j",
  \ "o":  "<CR>",
  \ "O":  "<CR><C-W>p<C-W>c",
  \ "go": "<CR><C-W>p",
  \ "h":  "<C-W><CR><C-W>K",
  \ "H":  "<C-W><CR><C-W>K<C-W>b",
  \ "v":  "<C-W><CR><C-W>H<C-W>b<C-W>J<C-W>t",
  \ "gv": "<C-W><CR><C-W>H<C-W>b<C-W>J",
  \ "q":  "<C-W>c" }

if exists("g:grepany_mappings")
  let g:grepany_mappings = extend(s:grepany_mappings, g:grepany_mappings)
else
  let g:grepany_mappings = s:grepany_mappings
endif

command! -bang -nargs=* -complete=file Grep     call grepany#grep("grep<bang>",<q-args>)
command! -bang -nargs=* -complete=file GrepAdd  call grepany#grep("grepadd<bang>", <q-args>)
command! -bang -nargs=* -complete=file LGrep    call grepany#grep("lgrep<bang>", <q-args>)
command! -bang -nargs=* -complete=file LGrepAdd call grepany#grep("lgrepadd<bang>", <q-args>)
command! -bang -nargs=* -complete=file GrepFile call grepany#grep("grep<bang> -g", <q-args>)
