set noswapfile
syntax on
set tabstop=2 shiftwidth=2 expandtab softtabstop=0
autocmd FileType * setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'pedrohdz/vim-yaml-folds'
call vundle#end()


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

augroup AutoSaveFolds
  autocmd!
  autocmd BufWinLeave * mkview
  autocmd BufWinEnter * silent loadview
augroup END

autocmd BufWritePre * %s/\s\+$//e

set foldmethod=indent
