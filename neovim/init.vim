call plug#begin('~/local/share/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
"Plug 'itchyny/lightline.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug 'drewtempelmeyer/palenight.vim'
"Plug 'mengelbrecht/lightline-bufferline'
Plug 'preservim/nerdtree'
Plug 'sheerun/vim-polyglot'
"Plug 'pihentagy/TeTrIs.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'kien/rainbow_parentheses.vim'
Plug 'potatoesmaster/i3-vim-syntax'
Plug 'eagletmt/neco-ghc'
Plug 'w0rp/ale'
Plug 'mhartington/oceanic-next'
Plug 'ollej/vim-emacs'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'arcticicestudio/nord-vim'
"Plug 'drmingdrmer/vim-tabbar'
Plug 'wsdjeg/vim-assembly'
"Plug 'aurieh/discord.nvim'
"Plug 'mhinz/vim-startify'
Plug 'joshdick/onedark.vim'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
call plug#end()

"
let g:airline_powerline_fonts = 1
let g:airline_theme='nord'
let g:airline#extensions#tabline#enabled = 1

colorscheme nord

set noshowmode
"let g:lightline = {
"      \ 'colorscheme': 'nord',
"      \ }




au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

set number

