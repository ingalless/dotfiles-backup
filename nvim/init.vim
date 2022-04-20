let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'arcticicestudio/nord-vim'
Plug 'andymass/vim-matchup'
Plug 'marlonfan/coc-phpls'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'StanAngeloff/php.vim', { 'for': 'php' }
Plug 'phpactor/phpactor', {'for': 'php', 'do': 'composer install'}
Plug 'adoy/vim-php-refactoring-toolbox'
Plug 'unblevable/quick-scope'
Plug 'gruvbox-community/gruvbox'
Plug 'townk/vim-autoclose'
Plug 'ledger/vim-ledger', { 'for': 'ledger' }
Plug 'ThePrimeagen/harpoon'
Plug 'jwalton512/vim-blade'
Plug 'voldikss/vim-floaterm'
Plug 'dart-lang/dart-vim-plugin', { 'for': 'dart' }
Plug 'altercation/vim-colors-solarized'

call plug#end()

source $HOME/.config/nvim/php.vim
source $HOME/.config/nvim/bindings.vim

set mouse=a
set number relativenumber
set nohlsearch
set hidden
set nowrap
set nobackup
set noswapfile
set incsearch
set expandtab
set smarttab
set cindent
set scrolloff=8
set tabstop=4
set shiftwidth=4
set ignorecase            " Search ingnoring case
set smartcase             " Do not ignore case if the search patter has uppercase
set signcolumn=yes
syntax on
colorscheme solarized
set background=light

highlight Normal ctermbg=none ctermfg=none guibg=none guifg=none
highlight! link SignColumn LineNr
let g:airline_theme = 'solarized'
let g:airline_powerline_fonts = 1
let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
let g:NERDTreeWinPos = "right"
let NERDTreeHighlightCursorline = 0
