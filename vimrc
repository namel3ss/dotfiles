filetype plugin on
filetype plugin indent on

syntax enable

color solarized
set background=dark
set noswapfile

nnoremap s :w<CR>

" Invisible characters and end of lines
nmap <leader>l :set list!<CR>
" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

" Tabs and spaces
set expandtab tabstop=2 softtabstop=2 shiftwidth=2

execute pathogen#infect()

" Clipboard
map <Leader>y "+y
map <Leader>fy :%y+<cr>

map <Leader>p :set paste<CR>"*]p:set nopaste<cr>
