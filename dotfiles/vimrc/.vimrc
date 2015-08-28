let mapleader = "\<Space>"
 call pathogen#infect()
  filetype off
   syntax on
    filetype plugin indent on

nmap 0 ^
nmap <leader>h :echo "Hello" <bar> :echo "Goodbye" <CR>
nmap <leader>vr :sp $MYVIMRC<CR>
nmap <leader>so :w <cr> <bar> :source $MYVIMRC<CR>

imap jk <esc>
imap kj <esc>





