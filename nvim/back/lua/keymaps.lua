local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", ",", "<Nop>", opts)
vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

keymap("n", "<leader>e", ":Lex 30<cr>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)


----OLD_VIM
--map j and k to gj gk
vim.cmd "nnoremap <expr> j v:count ? 'j' : 'gj'"
vim.cmd "nnoremap <expr> k v:count ? 'k' : 'gk'"


vim.cmd "nmap <Leader>r :set relativenumber!<cr>"

-----open vimrc file in a new buffer-----
vim.cmd "nmap <Leader>nv :tabedit $MYVIMRC<cr>"
vim.cmd "nmap <Leader>vv :tabedit ~/.config/nvim/lua/init.lua<cr>"
vim.cmd "nmap <Leader><Leader> :nohlsearch<cr>"
 
--vim.cmd "nmap <C-J> <C-W><C-J>"
--vim.cmd "nmap <C-K> <C-W><C-K>"
--vim.cmd "nmap <C-L> <C-W><C-L>"
--vim.cmd "nmap <C-H> <C-W><C-H>"

--nmap <Leader># I# <Esc><cr>  
vim.cmd "nmap <Leader><space> :Goyo<cr>"

-----save-----
vim.cmd "map <leader>s :w!<CR>"

--Yank and Put from clipboard
--vim.cmd 'vnoremap <C-c> "+y'
--vim.cmd 'map <C-v> "+p'

--nnoremap <buffer> <F5> :exec '!clear; python' shellescape(@%, 1)<cr>



