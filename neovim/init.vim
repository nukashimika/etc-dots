call plug#begin('~/local/share/nvim/plugged')
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'itchyny/lightline.vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'preservim/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'pihentagy/TeTrIs.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'kien/rainbow_parentheses.vim'
Plug 'potatoesmaster/i3-vim-syntax'
Plug 'eagletmt/neco-ghc'
Plug 'w0rp/ale'
Plug 'mhartington/oceanic-next'
Plug 'ollej/vim-emacs'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'drmingdrmer/vim-tabbar'
Plug 'wsdjeg/vim-assembly'
Plug 'joshdick/onedark.vim'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
call plug#end()

"
"let g:airline_powerline_fonts = 1
"let g:airline_theme='onedark'
colorscheme nord
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'nord',
      \ }



au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

set number



nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <M-n> :NERDTree<CR>
nnoremap <M-t> :NERDTreeToggle<CR>
nnoremap <M-f> :NERDTreeFind<CR>
