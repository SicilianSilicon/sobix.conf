vim.cmd "set nobackup"
--vim.cmd "set guifont=Ubuntu\ Mono\ 11"
vim.cmd "set cpt-=t"
vim.cmd "set ruler"
vim.cmd "set nocompatible"

vim.cmd "autocmd VimEnter * echo 'Without Gre@t SOLITUDE no Serious work is possible./'"
vim.cmd "so ~/.config/nvim/plugins.vim"
vim.cmd "so ~/.config/nvim/addon.vim"

-----Visuals-----
vim.cmd "colorscheme  farout" --archery ron phosphor ayu papaya_original monochrome nord hybrid_material"
vim.cmd "set t_CO=256"
vim.cmd "syntax on"
vim.cmd "syntax enable"
vim.cmd "let mapleader =','"


-----Searching-----
vim.cmd "set hlsearch"
vim.cmd "set incsearch"     --Incremental search take you there

-------------------

vim.cmd "filetype plugin on"
-----Case sensitive or not-----
vim.cmd "set ignorecase"  
vim.cmd "set encoding=utf-8"
-----show incomplete commands-----
vim.cmd "set showcmd"
-----not so high when zz-----
--set scrolloff=5
vim.cmd "set textwidth=129"
vim.cmd "set wrap"
-----show line numbers-----
vim.cmd "set number"
-----Backup-----
--set backup
--set bex=I'mBACKUP
vim.cmd "set path+=**"
vim.cmd "set clipboard=unnamedplus"
vim.cmd "set belloff=all"
vim.cmd "set noswapfile"
vim.cmd "set autoindent"
--set smartindent
vim.cmd "set tabstop=4" --width of a tab
vim.cmd "set expandtab" --inserts the appropriate number of spaces instead of an actual tab
vim.cmd "set softtabstop=4"
vim.cmd "set shiftwidth=4"
vim.cmd "set nrformats="
vim.cmd "set linebreak"
vim.cmd "set wildmenu"
vim.cmd "set backspace=eol,indent,start"
-----paste conflict with ruler?
--set paste

-----MACROS-----
--let @q =  "My Name is SOBIX.^J"


--set relativenumber

-----Split Management-----
vim.cmd "set splitbelow"
vim.cmd "set splitright"

-----AutoCommands-----
-----automatically source .vimrc file on save----
vim.cmd "augroup autosourcing autocmd! autocmd BufWritePost $MYVIMRC source % augroup END"

-----Visual Colors-----

--Get rid of split borders
--vim.cmd "highlight Visual cterm=bold ctermbg=Yellow ctermfg=NONE"
--must be at the end _ after colorscheme
--hi vertsplit guifg=bg guibg=bg   
vim.cmd "hi LineNr ctermfg=31"
--highlight Cursor  guibg=DarkOliveGreen
--highlight iCursor guifg=green guibg=DarkOliveGreen
--set guicursor=n-v-c:block-Cursor
--set guicursor+=i:ver100-iCursor
--set guicursor+=n-v-c:blinkon0
--set guicursor+=i:blinkwait10
