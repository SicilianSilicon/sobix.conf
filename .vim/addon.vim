
" PyScripts
au BufNewFile,BufRead *.py set tabstop=4 softtabstop=4 shiftwidth=4 textwidth=79 autoindent expandtab fileformat=unix

" You also want to avoid extraneous whitespace. 
"highlight BadWhitespace ctermbg=red guibg=darkred
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"FullStack Scripts
"au BufRead,BufNewFile *.js,*.html,*.css set tabstop=2 softtabstop=2 shiftwidth=2

"let python_highlight_all=1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"NERDTree 
"let NERDTreeHijackNetrw = 0 "to not mixing vinegar and NERDTREE
"nmap <Leader>tr :NERDTreeToggle<cr>  
"let NERDTreeMinimalUI  = 1
"let NERDTreeDirArrows  = 1
"let NERDTreeShowHidden = 1
"let g:NERDTreeWinSize  = 20
"let g:NERDTreeWinPos = "right"
"let NERDTreeShowHidden=0
"let NERDTreeMirror = 1

set guioptions-=L
set modifiable

"nmap <silent> <A-Up>    :wincmd k<CR>
"nmap <silent> <A-Down>  :wincmd j<CR>
"nmap <silent> <A-Left>  :wincmd h<CR>
"nmap <silent> <A-Right> :wincmd l<CR>
"nmap <silent> <A-k>     :wincmd k<CR>
"nmap <silent> <A-j>     :wincmd j<CR>
"nmap <silent> <A-h>     :wincmd h<CR>
"nmap <silent> <A-l>     :wincmd l<CR>
"map  <C-\>              :NERDTreeToggle<CR>

" Start NERDTree. If a file is specified, move the cursor to its window.
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

"autocmd vimenter * NERDTree D:\code\

" Exit Vim if NERDTree is the only window remaining in the only tab.
"autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 | let buf=bufnr() | buffer# | execute"normal! \<C-W>w" | execute 'buffer'.buf | endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
