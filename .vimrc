set ruler
set nocompatible
set nobackup
set guifont=Ubuntu\ Mono\ 11
set cpt-=t


"GVIM
set lines=30 columns=85
set guioptions -=m
set guioptions -=T
set guioptions -=r


              "Latest Vim Settings
autocmd VimEnter * echo "Without Gre@t SOLITUDE no Serious work is possible./"
so ~/.vim/plugins.vim
so ~/.vim/addon.vim

"-----Visuals-----"
colorscheme  farout "phosphor ayu papaya_original monochrome nord hybrid_material
set t_CO=256
syntax on
syntax enable
let mapleader =','


"-----Searching-----"
set hlsearch
set incsearch     "Incremental search take you there

"-------------------"

filetype plugin on
"-----Case sensitive or not-----"
"set ignorecase  
set encoding=utf-8
"-----show incomplete commands-----"
set showcmd
"-----not so high when zz-----"
"set scrolloff=5
set textwidth=129
set wrap
"-----show line numbers-----"
set number  
"-----Backup-----"
"set backup
"set bex=I'mBACKUP
set path+=**
set clipboard=unnamedplus
set belloff=all
set noswapfile
"set autoindent
"set smartindent
set tabstop=4  "width of a tab
set expandtab  "inserts the appropriate number of spaces instead of an actual tab
set softtabstop=4
set shiftwidth=4
set nrformats=
set linebreak
set wildmenu
set backspace=eol,indent,start
"-----paste conflict with ruler?
"set paste

"-----MACROS-----"
"let @q =  "My Name is SOBIX.^J"

"-----Mappings-----"

nnoremap <buffer> <F5> :exec '!clear; python' shellescape(@%, 1)<cr>

"nmap <Leader># I# <Esc><cr>  
nmap <Leader><space> :Goyo<cr>

"-----save-----"
map <leader>s :w!<CR>

"Yank and Put from clipboard
vnoremap <C-c> "+y
"map <C-v> "+p

"map j and k to gj gk
nnoremap <expr> j v:count ? 'j' : 'gj'
nnoremap <expr> k v:count ? 'k' : 'gk'

"Relative Numbers Toggle
"set relativenumber
nmap <Leader>r :set relativenumber!<cr>

"NERDTree 
"let NERDTreeHijackNetrw = 0 "to not mixing vinegar and NERDTREE
"nmap <Leader>tr :NERDTreeToggle<cr>  

"-----open vimrc file in a new buffer-----"
nmap <Leader>ev :tabedit $MYVIMRC<cr>
nmap <Leader><Leader> :nohlsearch<cr>
 

"-----Split Management-----"
set splitbelow
set splitright
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-L> <C-W><C-L>
nmap <C-H> <C-W><C-H>

"-----AutoCommands-----"
"-----automatically source .vimrc file on save----"
augroup autosourcing
    autocmd!
    autocmd BufWritePost $MYVIMRC source %
augroup END

"-----Visual Colors-----"

"hi LineNr ctermfg=94

"Get rid of split borders
"highlight Visual cterm=bold ctermbg=Yellow ctermfg=NONE
"must be at the end _ after colorscheme
"hi vertsplit guifg=bg guibg=bg   
hi LineNr ctermfg=31 
"highlight Cursor  guibg=DarkOliveGreen
"highlight iCursor guifg=green guibg=DarkOliveGreen
"set guicursor=n-v-c:block-Cursor
"set guicursor+=i:ver100-iCursor
"set guicursor+=n-v-c:blinkon0
"set guicursor+=i:blinkwait10
