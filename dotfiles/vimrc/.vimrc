set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Bundle 'christoomey/vim-tmux-navigator'
Bundle 'christoomey/vim-tmux-runner'
Plugin 'thoughtbot/vim-rspec'

"
" " All of your Plugins must be added before the following line
call vundle#end()            " required
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

autocmd VimResized * :wincmd =
" zoom a vim pane, <C-w>= to re-balance
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>

let g:rspec_command = "VtrSendCommandToRunner! rspec {spec}"
" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>



