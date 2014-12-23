function! s:git_grep()
  if system("git rev-parse --is-inside-work-tree") =~# "true"
    return 1
  else
    return 0
  endif
endfunction

function! s:prg()
  if s:git_grep()
    let g:grepany_prg = "git grep --no-color --line-number"
  elseif executable("pt")
    let g:grepany_prg = "pt --nogroup --nocolor"
  elseif executable("ag")
    let g:grepany_prg = "ag --nogroup --nocolor --column"
  elseif executable("ack")
    let g:grepany_prg = "ack --nogroup --nocolor --column"
  else
    let g:grepany_prg = "grep --with-filename --line-number --recursive"
  endif
endfunction

function! s:files(cmd)
  if a:cmd =~# "-g$"
    let g:grepany_prg = substitute(g:grepany_prg, "--column", "", "g")
  endif
endfunction

function! s:args(args)
  if empty(a:args)
    let s:grepany_args = expand("<cword>")
  else
    let s:grepany_args = a:args
  endif
endfunction

function! s:open(cmd)
  if a:cmd =~# "^l"
    execute "lopen"
  else
    execute "copen"
  endif
endfunction

function! s:mappings()
  for mapping in items(g:grepany_mappings)
    execute printf("nnoremap <buffer> <silent> %s %s", get(mapping, 0), get(mapping, 1))
  endfor
endfunction

function! grepany#grep(cmd, args)
  let l:grepprg_bak = &grepprg
  let l:grepformat_bak = &grepformat
  try
    echomsg "Searching..."
    call s:prg()
    call s:files(a:cmd)
    call s:args(a:args)
    let &grepprg = g:grepany_prg
    let &grepformat = g:grepany_format
    silent execute a:cmd . " " . escape(s:grepany_args, '|#%')
    call s:open(a:cmd)
    call s:mappings()
    execute "redraw!"
  finally
    let &grepprg = l:grepprg_bak
    let &grepformat = l:grepformat_bak
  endtry
endfunction
