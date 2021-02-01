execute pathogen#infect()

" Theming
set t_Co=256
set background=dark
colorscheme monokai

" No word-wrap, thanks
set nowrap

" Four blank spaces for tabs
set tabstop=2 softtabstop=0 expandtab shiftwidth=2
set expandtab

" Show both absolute and relative numbers in gutter
set number
set relativenumber

" Swap files go here
set directory^=$HOME/.vim/tmp/

" 80 lines please
set colorcolumn=80
highlight ColorColumn ctermbg=magenta

" gitgutter should be speedy
set updatetime=100

" Let's omnicomplete
filetype plugin on
set omnifunc=syntaxcomplete#Complete

" lazy drawing
set lazyredraw

" Set .ctrlp as a CtrlP root marker
let g:ctrlp_root_markers = ['.ctrlp']

" Ignore files in .gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" ALE leader keys
nmap <silent> <leader>aj :ALENext<cr>
nmap <silent> <leader>ak :ALEPrevious<cr>
nmap <silent> <leader>aw :ALENextWrap<cr>
nmap <silent> <leader>af :ALEFix<cr>

" Airline should use powerline fonts
let g:airline_powerline_fonts=1
