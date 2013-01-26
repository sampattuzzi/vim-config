" Set up Pathogen
runtime bundle/pathogen/autoload/pathogen.vim
execute pathogen#infect()

" Set up Solarized
set background=dark
colorscheme solarized

" Set the shell to POSIX compliant
if $SHELL =~ 'bin/fish'
    set shell=/bin/sh
endif

" Set default window size:
set lines=60 columns=100
" Disable Vi compliance:
set nocompatible
" Quickly switch to matching bracket on completion:
set showmatch
" Incrementally search:
set incsearch
" Loads filetype specific plugins:
filetype plugin on
" Set font to Inconsolata:
set gfn=Inconsolata\ Medium\ 12

" Switch on syntax highlighting:
syntax on

" Turn on line numbers:
set number
" Toggle line numbers and fold column for easy copying:
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

" Taglist variables
" Display function name in status bar:
let g:ctags_statusline=1
" Automatically start script
let generate_tags=1
" Displays taglist results in a vertical window:
let Tlist_Use_Horiz_Window=0
" Shorter commands to toggle Taglist display
nnoremap TT :TlistToggle<CR>
map <F4> :TlistToggle<CR>:NERDTreeToggle<CR>
" Various Taglist diplay config:
let Tlist_Use_Left_Window = 1
let Tlist_Compact_Format = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_File_Fold_Auto_Close = 1
" Sort tags by name to make vim happy:
"let Tlist_Sort_Type = "name"

" Create a drupal filetype:
if has("autocmd")
  " Drupal *.module and *.install files.
  augroup module
    autocmd BufRead,BufNewFile *.module set filetype=drupal
    autocmd BufRead,BufNewFile *.install set filetype=drupal
  augroup END
endif

" Setup MiniBuffExplorer:
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 

" NERDtree setup:
let g:NERDTreeWinPos = "right"

" Add a mapping for saving as super user:
cmap w!! %!sudo tee > /dev/null %

" Javascript support in TagList:
let g:tlist_javascript_settings = 'javascript;s:string;a:array;o:object;f:function'

" Set leader
let mapleader = ","

" Custom mappings
nnoremap <leader>d :bd<CR>
nnoremap <leader>t :CtrlP<CR>
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>ss :LAck '<C-r><C-w>'<CR>
nnoremap <leader>sf :LAck '<C-r><C-w> ::'<CR>
nnoremap <leader>sd :LAck 'data.*<C-r><C-w>'<CR>
nnoremap <leader>st :LAck 'type.*<C-r><C-w>'<CR>
nnoremap <leader>sc :LAck 'class.*<C-r><C-w>'<CR>
inoremap <C-space> <C-X><C-O>

" Add keymappings to insert blank lines above and below
nnoremap <C-j> A<CR><ESC> 
nnoremap <C-k> I<CR><ESC>

" Automatically save on switching buffers
set autowriteall

" Move on wrapped lines
noremap  <silent> k gk
noremap  <silent> j gj
noremap  <silent> <down> gj
noremap  <silent> <up> gk
noremap  <silent> 0 g0
noremap  <silent> $ g$

" Auto wrapping
" set fo+=aw
set whichwrap+=<,>,h,l,[,]

" Highlight wrap boundary
set colorcolumn=+1
