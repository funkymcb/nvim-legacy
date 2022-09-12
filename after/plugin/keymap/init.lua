local Remap = require("funkymcb.keymap")
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local inoremap = Remap.inoremap
local xnoremap = Remap.xnoremap
local nmap = Remap.nmap

vim.g.mapleader = " "

-- normal mode remaps
nnoremap("<leader><leader>", ":silent!nohls<CR>")

nnoremap("j", "gj")
nnoremap("k", "gk")
nnoremap("G", "Gzz")
nnoremap("n", "nzz")
nnoremap("N", "Nzz")
nnoremap("<C-d>", "<C-d>zz")
nnoremap("<C-u>", "<C-u>zz")

nnoremap("<C-p>", "\"+p")

nnoremap("<Tab>", "gt")
nnoremap("<S-Tab>", "gT")
nnoremap("<leader>j", "<C-W><C-J>")
nnoremap("<leader>k", "<C-W><C-K>")
nnoremap("<leader>h", "<C-W><C-H>")
nnoremap("<leader>l", "<C-W><C-L>")
nnoremap("<leader>q", ":q<CR>")
nnoremap("<leader>Q", ":qa<CR>")
nnoremap("<leader>w", ":w<CR>")
nnoremap("<leader>W", ":wq<CR>")
nnoremap("<C-q>", ":tabclose<CR>")

nnoremap("<C-f>", ":NvimTreeToggle<CR>")

nnoremap("<leader>fj", ":%!python3 -m json.tool<cr>")

-- visual mode remaps
vnoremap("<C-y>", "\"+y")
vnoremap("<leader>be", "c<c-r>=system('base64', @\")<cr><esc>kJ")
vnoremap("<leader>bd", "c<c-r>=system('base64 --decode', @\")<cr><esc>")
vnoremap("J", ":m '>+1<CR>gv=gv")
vnoremap("K", ":m '<-2<CR>gv=gv")

-- telescope
nnoremap("<leader>fg", ":lua require('telescope.builtin').live_grep()<CR>")
nnoremap("<leader>ff", ":lua require('telescope.builtin').find_files()<CR>")
nnoremap("<leader>fm", ":lua require('telescope.builtin').marks()<CR>")
nnoremap("<leader>fb", ":lua require('telescope.builtin').buffers()<CR>")
nnoremap("<leader>fc", ":lua require('telescope.builtin').git_commits()<CR>")

-- fugitive
nnoremap("<leader>gs", ":G<CR>")
nnoremap("<leader>gc", ":G commit<CR>")
nnoremap("<leader>gl", ":tabedit|Gllog<CR>")
nnoremap("<leader>gp", ":G -c push.default=current push<CR>")
nnoremap("<leader>gb", ":G blame<CR>")
