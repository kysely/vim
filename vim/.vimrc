filetype plugin on
syntax enable

set hidden
set number
set path+=**
set wildmenu
set noshowmode
set splitright
set nocompatible
set laststatus=2
set clipboard=unnamedplus

call plug#begin('~/.vim/plugged')
  Plug 'python-mode/python-mode'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-fugitive'
  Plug 'bling/vim-bufferline'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'katusk/vim-qkdb-syntax'
  Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
  Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
call plug#end()

" GUI:
set guioptions=
set linespace=4
set guifont=Fira\ Code:h13

" INDENTATION:
set smartindent
set tabstop=4 shiftwidth=4 noexpandtab smarttab autoindent

autocmd FileType python setlocal tabstop=4 shiftwidth=4 noexpandtab
autocmd FileType cython setlocal tabstop=4 shiftwidth=4 noexpandtab
autocmd FileType pyrex  setlocal tabstop=4 shiftwidth=4 noexpandtab

" VERTICAL RULERS:
set colorcolumn=79

" COLOR CUSTOMIZATION:
hi ColorColumn ctermbg=Black guibg=Black
hi VertSplit ctermfg=Black ctermbg=Black guibg=Black

" COLOR SCHEME:
set termguicolors
colorscheme boxy-tomorrow

" KEY SHORTCUTS:
imap jk <Esc>
imap JK <Esc>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap sidebar 25<C-w><Bar>
nnoremap sideterm 63<C-w><Bar>

nnoremap ter :ConqueTerm bash<CR>
nnoremap vter :ConqueTermVSplit bash<CR><Esc>63<C-w><Bar>i
nnoremap tt <C-w>li
nnoremap vsp :vsplit 
nnoremap sp :split 
nnoremap gt :bn<CR>
nnoremap gp :bp<CR>
tnoremap <Esc> <C-\><C-n>

" SNIPPETS:
imap ,doc """<Esc>o"""<Esc>ka
imap ,class <Esc>:-1read $HOME/.vim/snippets/class_template.py<CR>wce

" INDENTGUIDES:
let g:indent_guides_enable_on_vim_startup = 1

" PYMODE:
let g:pymode_syntax = 1
let g:pymode_folding = 0
let g:pymode_options_max_line_length = 79

let g:pymode_lint = 0
let g:pymode_syntax_indent_errors = 0

" COMPLETOR:
let g:completor_clang_binary = '/usr/bin/clang'
let g:completor_python_binary = '/Users/radek/anaconda3/bin/python3'
let g:completor_node_binary = '/usr/local/bin/node'
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>\<cr>" : "\<cr>"

" NERDTREE:
let NERDTreeIgnore=['\.pyc$', '\.pyo$', '__pycache__$', '\.swp$', '.DS_Store$', '.git$', '.cache$']
let NERDTreeWinSize=25
let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1

" BUFFERLINE:
let g:bufferline_echo = 0

" AIRLINE:
let g:airline_theme='base16'
let g:airline_extensions = ['branch', 'bufferline']
let g:airline#extensions#default#layout = [
	\ [ 'a', 'c' ],
	\ [ 'x', 'y', 'z' ]
	\ ]
function! AirlineInit()
	let g:airline_section_a = airline#section#create(['mode'])
	let g:airline_section_x = airline#section#create(['filetype'])
	let g:airline_section_y = airline#section#create(['branch'])
	let g:airline_section_z = '%l:%c'
endfunction
autocmd VimEnter * call AirlineInit()

" CTRLP:
let g:ctrlp_show_hidden = 1

