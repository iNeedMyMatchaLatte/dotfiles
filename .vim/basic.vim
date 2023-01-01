""" COMMON SETTINGS ==================================
" Show current and relative line number
set number relativenumber

" Basic highlighting for most languages
syntax on

" No error bells when going at the end of a line
set noerrorbells

" Avoid forced writes when switching buffers
set hidden

" Show lines of context around cursor
set scrolloff=5

" Always show what vim mode currently in
set showmode

nnoremap <Space> <Nop>
let mapleader = " "


""" YANK/PASTE =======================================
" \"+ -- clipboard
nnoremap <Leader>d "+dd
vnoremap <Leader>d "+d
nnoremap <Leader>y "+yy
vnoremap <Leader>y "+y
nnoremap <Leader>p "+p
" Store replaced text in black hole register
xnoremap <Leader>p "_dP
nnoremap <Leader>P "+P
vnoremap <Leader>P "+P


""" LINE MANIPULATION ================================
" Move line up/down
nnoremap <C-j> :m +1<CR>
nnoremap <C-k> :m -2<CR>
inoremap <C-j> <Esc>:m +1<CR>gi
inoremap <C-k> <Esc>:m -2<CR>gi


""" SEARCHING ========================================
" No case sensitive searching until a capital character is used
set smartcase
" Incremental search. Highlight search result as you type.
set incsearch


""" SPLIT PANES ======================================
" Jump around splits
nnoremap <Leader>h :wincmd h<CR>
nnoremap <Leader>j :wincmd j<CR>
nnoremap <Leader>k :wincmd k<CR>
nnoremap <Leader>l :wincmd l<CR>
" Resizing of vertical splits
nnoremap <silent> <Leader>> :vertical resize +5<CR>
nnoremap <silent> <Leader>< :vertical resize -5<CR>
" Resizing of horizontal splits
nnoremap <silent> <Leader>+ :resize +5<CR>
nnoremap <silent> <Leader>- :resize -5<CR>
