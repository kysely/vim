filetype plugin on
syntax enable

set nocompatible
set hidden
set path+=**
set wildmenu
set number
set splitright
set laststatus=2

" INDENTATION:
set smartindent
set tabstop=4 shiftwidth=4 noexpandtab nosmarttab autoindent
autocmd FileType python setlocal tabstop=4 shiftwidth=4 noexpandtab

" VERTICAL RULERS:
set cc=90

" COLOR CUSTOMIZATION:
hi ColorColumn ctermbg=Black guibg=Black
hi VertSplit ctermfg=Black ctermbg=Black
hi StatusLine ctermfg=Yellow ctermbg=Black
hi StatusLineNC ctermfg=Black ctermbg=DarkGray

" KEY SHORTCUTS:
imap jk <Esc>
imap JK <Esc>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap sidebar 30<C-w><Bar>
nnoremap sideterm 53<C-w><Bar>

nnoremap ter :ConqueTerm bash<CR>
nnoremap vter :ConqueTermVSplit bash<CR><Esc>53<C-w><Bar>i
nnoremap vex :Vexplore .<CR>30<C-w><Bar><C-w>l
nnoremap vsp :vsplit 
nnoremap sp :split 
nnoremap gt :bN<CR>
nnoremap tabs :ls<CR>

" SNIPPETS:
imap ,doc """<Esc>o"""<Esc>ka
imap ,class <Esc>:-1read $HOME/.vim/snippets/class_template.py<CR>wce


" NETRW Tree View:
let g:netrw_banner=0
let g:netrw_winsize=20
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_liststyle=3
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" VIM BUFFERLINE SETTINGS:
let g:bufferline_active_buffer_left = ''
let g:bufferline_active_buffer_right = ''
let g:bufferline_show_bufnr = 0
let g:bufferline_echo = 0
autocmd VimEnter *
	\ let &statusline='%{bufferline#refresh_status()}'
		\ .bufferline#get_status_string()

" CTRLP:
let g:ctrlp_show_hidden = 1
