" Install vim-plug if not already installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Init vim plug
call plug#begin('~/.vim/plugged')

" Fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" Intellisense
" Requires nodejs to be installed
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'clangd/coc-clangd'

" Nerdtree
Plug 'preservim/nerdtree'

" git vim-fugitive
Plug 'tpope/vim-fugitive'

" Bracket auto pairing
Plug 'jiangmiao/auto-pairs'

" Icons for nerdtree
"Plug 'ryanoasis/vim-devicons'

" Status bar
" Plug 'powerline/powerline'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Prettier
Plug 'prettier/vim-prettier'

" Monokai color theme
Plug 'erichdongubler/vim-sublime-monokai'

" Better highlighting
Plug 'octol/vim-cpp-enhanced-highlight'

" Tagbar
Plug 'majutsushi/tagbar'

" End vim plug
call plug#end()

" Settings
" Theme
syntax on
colorscheme sublimemonokai

" Font
set guifont=Source\ Code\ Pro\ 11
"set guifont

" Line numbers
set number

" Airline
set encoding=utf-8
let g:airline_theme='wombat'
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'


" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" Colors
set t_Co=256

" Nerdtree settings
autocmd VimEnter * if !argc() | NERDTree | endif

" Tab settings
set tabstop=4
set shiftwidth=4
set expandtab

" C++ highlighting settings
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_concepts_highlight = 1

" Tagbar
nmap <F8> :TagbarToggle<CR>

" NERDTree
nmap <F7> :NERDTreeToggle<CR>
