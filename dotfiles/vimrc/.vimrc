runtime macros/matchit.vim
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/colors/jellybeans.vim
set laststatus=2
set history=10000
set showcmd

filetype plugin indent on    " required

let mapleader = "\<Space>"
 call pathogen#infect()
  filetype off
   syntax on
    filetype plugin indent on
set shiftwidth=2
nmap 0 ^
nmap <leader>h :echo "Hello" <bar> :echo "Goodbye" <CR>
nmap <leader>vr :sp $MYVIMRC<CR>
nmap <leader>so :w <cr> <bar> :source $MYVIMRC<CR>

imap jk <esc>
imap kj <esc>

" Set Color Scheme
colorscheme jellybeans

" Sets to inherit background color from terminal
hi Normal ctermbg=none

nnoremap <leader>va :VtrAttachToPane<cr>
nnoremap <leader>ror :VtrReorientRunner<cr>
nnoremap <leader>sc :VtrSendCommandToRunner<cr>
nnoremap <leader>sl :VtrSendLinesToRunner<cr>
vnoremap <leader>sl :VtrSendLinesToRunner<cr>
nnoremap <leader>or :VtrOpenRunner<cr>
nnoremap <leader>kr :VtrKillRunner<cr>
nnoremap <leader>fr :VtrFocusRunner<cr>
nnoremap <leader>dr :VtrDetachRunner<cr>
nnoremap <leader>cr :VtrClearRunner<cr>
nnoremap <leader>fc :VtrFlushCommand<cr>
nnoremap <leader>sf :VtrSendFile<cr>

map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
map <Leader>n :call RunNearestSpec()<CR>


autocmd BufRead,BufNewFile *.es6 setfiletype javascript
autocmd VimResized * :wincmd =
" zoom a vim pane, <C-w>= to re-balance
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>

let g:rspec_command = "VtrSendCommandToRunner! rspec {spec}"
