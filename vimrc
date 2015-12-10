nnoremap s :w<CR>


" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'ervandew/supertab'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'MarcWeber/vim-addon-mw-utils'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'tpope/vim-eunuch'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'garbas/vim-snipmate'
NeoBundle 'honza/vim-snippets'
NeoBundle 'tpope/vim-surround'
NeoBundle 'skalnik/vim-vroom'
NeoBundle 'godlygeek/csapprox'
NeoBundle 'ntpeters/vim-better-whitespace'

" Themes
NeoBundle 'duythinht/inori'
NeoBundle 'xero/sourcerer.vim'
NeoBundle 'glortho/feral-vim'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

filetype plugin on
filetype plugin indent on

syntax enable

" Theme
colorscheme sourcerer
set noswapfile

" Invisible characters and end of lines
nmap <leader>l :set list!<CR>
" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬
" puts a $ marker for the end of words/lines in cw/c$ commands
set cpoptions+=$

" Tabs and spaces
set expandtab tabstop=2 softtabstop=2 shiftwidth=2

" Clipboard
map <Leader>y "+y
map <Leader>fy :%y+<cr>
map <Leader>p :set paste<CR>"*]p:set nopaste<cr>


" displays <% %> correctly
autocmd User Rails let b:surround_{char2nr('-')} = "<% \r %>"

" NERDTree
let g:NERDTreeWinPos = "right"
