set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'BlockComment.vim'
Plugin 'alvan/vim-closetag'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'majutsushi/tagbar'
Plugin 'mileszs/ack.vim'
Plugin 'noahfrederick/vim-hemisu'
Plugin 'notpratheek/vim-luna'
Plugin 'othree/html5.vim'
Plugin 'scrooloose/syntastic'
"--------------------------------------------------
" Plugin 'sheerun/vim-polyglot'
"-------------------------------------------------- 
Plugin 'skammer/vim-css-color'
Plugin 'tomasr/molokai'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-vinegar'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-scripts/eclipse.vim'
Plugin 'vim-scripts/searchfold.vim'
Plugin 'vim-scripts/vim-soy'
Plugin 'vitalk/vim-simple-todo'


call vundle#end()

filetype plugin indent on
" Configure basic stuff for programmers
set autoindent
set expandtab
set foldlevel=2
set foldmethod=syntax
set foldnestmax=10
set nobackup
set nofoldenable
set noswapfile
set shiftwidth=2
set smartindent
set smarttab
set tabstop=2 " Make tab work as space (1 tab == 2 spaces)
set pastetoggle=<F2> " Toggles pasting without indent
set so=3 " Keep several lines as biggers around the ends of screen
set switchbuf=split " Split the window when opening new buffers
setlocal omnifunc=syntaxcomplete#Complete " Use syntax completion (per file type) for omni completion.
set synmaxcol=250 " Maximum columns to highlight syntactically

" Mappings
" Command line to behave like the bash cmd
cnoremap <C-A> <Home>
cnoremap <C-E> <End>
cnoremap <C-K> <C-U>
cnoremap <C-P> <Up>
cnoremap <C-N> <Down>
" Do search in visual range only
vnoremap <C-\> <Esc>/\%V
" Clear highlights from search
nmap ,/ :nohlsearch<CR>
" Search buffers currently open (with CtrlP)
nmap <C-b> :BufExplorer<CR>
" Mappings for tabs
nnoremap ESC1 1gt
nnoremap ESC2 2gt
nnoremap ESC3 3gt
nnoremap ESC9 :tablast<CR>
" Disable the arrow keys to force the user to use movement keys.
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>


" Pugin configuration
let g:airline_powerline_fonts = 0
let g:airline_theme = "bubblegum"
" Remove automatically fugitive buffers when not used
autocmd BufReadPost fugitive://* set bufhidden=delete
" Configure syntastic
let g:syntastic_javascript_checkers=["gjslint"]
let g:syntastic_echo_current_error=0
let g:syntastic_javascript_gjslint_conf="--jslint_error=all --strict --max_line_length 80"
let g:syntastic_enable_signs=1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_auto_loc_list=1

" Use color terminals
set t_Co=256
colo molokai
set background=light

" GUI stuff
set go=
set go+=Pm " Disable gui elements

set gfn=Monospace\ 14
set laststatus=2
set completeopt=menuone,preview,longest
set guicursor+=a:blinkon0 " Disable blinking

