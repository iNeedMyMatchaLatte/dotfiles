""" GLOBAL VARIABLES =================================
let $VIMROOT=$HOME."/.vim"
let $UNDO_DIR=$VIMROOT."/undo-dir"
let $SWAP_DIR=$VIMROOT."/swap-dir"
let $BACKUP_DIR=$VIMROOT."/backup-dir"


""" PRELIMINARY STEPS ================================
if !isdirectory($VIMROOT)
    call mkdir($VIMROOT, "", 0770)
endif
if !isdirectory($UNDO_DIR)
    call mkdir($UNDO_DIR, "", 0700)
endif
if !isdirectory($SWAP_DIR)
    call mkdir($SWAP_DIR, "", 0700)
endif
if !isdirectory($BACKUP_DIR)
    call mkdir($BACKUP_DIR, "", 0700)
endif


""" INDENTATION ======================================
" Only 4 characters long for a tab
set tabstop=4
" Only 4 spaces long for a tab
set softtabstop=4
" >> shifting should be 4 spaces increments
set shiftwidth=4
" Convert a tab to spaces
set expandtab
" Indent for me. E.g. within if/else blocks
set smartindent


""" COLUMN CONSTRAINTS ===============================
" Don't make a long code line appear on a new line
set nowrap
" Indicator of where the 120 character limit is at
set colorcolumn=120
highlight ColorColumn ctermbg=0 guibg=lightgrey


""" UNDO ============================================
" Vim uses a tree instead of a stack
nnoremap <leader>u :UndotreeShow<CR>

" Store all undo files in one directory here
" Double trailing slashes to avoid file name collisions
set undodir=$UNDO_DIR
" Store undo tree in a file so history is not lost
" Consider creating a crontab to delete unmodified
" undo files over 90 days
set undofile

""" EDITS REDUNDANCY ================================
" Swap files are used for UNSAVED changes of the file
" Store all swap files in one directory here
" Double trailing slashes to avoid file name collisions
set directory=$SWAP_DIR

" Backup files are for the last SAVED version of the file
" Store all backup files in one directory here
" Double trailing slashes to avoid file name collisions
set backupdir=$BACKUP_DIR


""" PLUGINS ==========================================
call plug#begin('~/.vim/plugged')
" Man pages
"Plug 'vim-utils/vim-man'

"Plug 'mbbill/undotree'
call plug#end()
