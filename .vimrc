set noswapfile
syntax on
set tabstop=2 shiftwidth=2 expandtab softtabstop=0
autocmd FileType * setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2


function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction

augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END
set paste


autocmd BufWritePre * %s/\s\+$//e
