" ============================================================================
" FileName: lf_floaterm.vim
" Author: voldikss <dyzplus@gmail.com>
" GitHub: https://github.com/voldikss
" ============================================================================

function! lf_floaterm#source(...)
  let candidates = []
  let bufs = floaterm#buflist#gather()
  for bufnr in bufs
    let bufinfo = getbufinfo(bufnr)[0]
    let name = bufinfo['name']
    let title = getbufvar(bufnr, 'term_title')
    let line = printf('    %s    %s    %s', bufnr, name, title)
    call add(candidates, line)
  endfor
  return candidates
endfunction

function! lf_floaterm#accept(line, arg) abort
  let bufnr = str2nr(matchstr(a:line, '\S'))
  call floaterm#terminal#open_existing(bufnr)
endfunction

function! lf_floaterm#preview(orig_buf_nr, orig_cursor, line, args) abort
  let bufnr = str2nr(matchstr(a:line, '\S'))
  let lnum = getbufinfo(bufnr)[0]['lnum']
  return [bufnr, lnum, '']
endfunction
