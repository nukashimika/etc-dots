call plug#begin('~/local/share/nvim/plugged')
Plug 'L3MON4D3/LuaSnip'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
"Plug 'itchyny/lightline.vim'
Plug 'nathanaelkane/vim-indent-guides'
"Plug 'neovim/nvim-lspconfig'
"Plug 'hrsh7th/cmp-nvim-lsp'
"Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'
Plug 'andreypopp/asyncomplete-ale.vim'
"Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug 'drewtempelmeyer/palenight.vim'
"Plug 'mengelbrecht/lightline-bufferline'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'prabirshrestha/asyncomplete.vim'
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
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'arcticicestudio/nord-vim'
"Plug 'drmingdrmer/vim-tabbar'
Plug 'wsdjeg/vim-assembly'
"Plug 'aurieh/discord.nvim'
"Plug 'mhinz/vim-startify'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'thomasfaingnaert/vim-lsp-snippets'
"Plug 'thomasfaingnaert/vim-lsp-neosnippet'
Plug 'junegunn/fzf'
Plug 'joshdick/onedark.vim'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}


if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1


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



let mapleader = "M-x"



nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <M-n> :NERDTree<CR>
nnoremap <M-t> :NERDTreeToggle<CR>
nnoremap <M-f> :NERDTreeFind<CR>
let NERDTreeShowHidden=1







let g:lsp_diagnostics_enabled = 0

" NOTE: You can use other key to expand snippet.

" Expand
imap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
smap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'

" Expand or jump
imap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
smap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'

" Jump forward or backward
imap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
smap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
imap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
smap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'

" Select or cut text to use as $TM_SELECTED_TEXT in the next snippet.
" See https://github.com/hrsh7th/vim-vsnip/pull/50
nmap        s   <Plug>(vsnip-select-text)
xmap        s   <Plug>(vsnip-select-text)
nmap        S   <Plug>(vsnip-cut-text)
xmap        S   <Plug>(vsnip-cut-text)



au User asyncomplete_setup call asyncomplete#ale#register_source({
    \ 'name': 'reason',
    \ 'linter': 'flow',
    \ })
