set noswapfile
syntax on
colorscheme desert

"call plug#begin()	
"Plug 'andreypopp/vim-colors-plain'
"call plug#end()

set runtimepath^=~/.vim/bundle/ctrlp.vim

set background=light 
"colorscheme plain

set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab

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

