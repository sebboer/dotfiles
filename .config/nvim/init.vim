
call plug#begin('~/.local/share/nvim/plugged')

Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'itchyny/lightline.vim'
Plug 'morhetz/gruvbox'
Plug '~/.fzf'
Plug 'junegunn/fzf.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'airblade/vim-gitgutter'
Plug 'w0rp/ale'
Plug 'chrisbra/Colorizer'
Plug 'vim-pandoc/vim-rmarkdown'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'lervag/vimtex'
Plug 'mcchrish/nnn.vim'

call plug#end()


" Theme
colorscheme gruvbox

let g:lightline = {
	\ 'colorscheme': 'gruvbox',
	\}

" Config
syntax on
set tabstop=2
set softtabstop=0
set shiftwidth=2
set number relativenumber
set ignorecase
set showmatch
set autoindent
set splitbelow splitright
set updatetime=500
set signcolumn=yes

" Key Maps
nnoremap <C-n> :NnnPicker '%:p:h'<CR>
nnoremap <C-h> :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>
nnoremap <C-t> :tabnew<space>

autocmd Filetype rmd,rmarkdown map <F5> :RMarkdown pdf<CR>
autocmd Filetype tex map <F10> :VimtexCompile <CR>
autocmd BufRead,BufNewFile *.rmd set filetype=rmarkdown

" --- Airline Settings ---
set laststatus=2
let g:airline_powerline_fonts=1

" --- vimtex Settings ---
let g:vimtex_view_method = 'zathura'

" --- nnn Settings ---
let g:nnn#layout = { 'left': '~40%' } " or right, up, down<Paste>
let g:nnn#action = { '<c-t>': 'tab split'}
