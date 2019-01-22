
call plug#begin('~/.local/share/nvim/plugged')

Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'itchyny/lightline.vim'
Plug 'morhetz/gruvbox'
Plug '~/.fzf'
Plug 'junegunn/fzf.vim'
Plug 'editorconfig/editorconfig-vim'

call plug#end()


" Theme
colorscheme gruvbox

let g:lightline = {
	\ 'colorscheme': 'jellybeans',
	\}

" Config
syntax on
set number relativenumber
set ignorecase
set showmatch
set autoindent
set splitbelow splitright

" Key Maps
map <C-o> :NERDTreeToggle<CR>
