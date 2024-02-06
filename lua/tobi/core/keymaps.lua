vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set('n', '<C-h>', '<C-w>h') -- move to left window
vim.keymap.set('n', '<C-j>', '<C-w>j') -- move to bottom window
vim.keymap.set('n', '<C-k>', '<C-w>k') -- move to top window
vim.keymap.set('n', '<C-l>', '<C-w>l') -- move to right window

vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv") -- move line up in visual mode
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv") -- move line down in visual mode
vim.keymap.set('n', '<C-d>', '<C-d>zz') -- move down half screen, center cursor
vim.keymap.set('n', '<C-u>', '<C-u>zz') -- move up half screen, center cursor
vim.keymap.set('n', 'n', 'nzzzv') -- move to next search result, center cursor
vim.keymap.set('n', 'N', 'Nzzzv') -- move to previous search result, center cursor

-- use jk to exit insert mode
vim.keymap.set('i', 'jk', '<ESC>')

-- clear search highlights
vim.keymap.set('n', '<leader>nh', ':nohl<CR>')

-- delete single character without copying into register
vim.keymap.set('n', 'x', '"_x')
-- replace block of text without copying into register
vim.keymap.set('x', '<leader>p', [["_dP]])
-- yank to system clipboard
-- vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
-- yank line to system clipboard
-- vim.keymap.set("n", "<leader>Y", [["+Y]])
-- delete without copying into register
vim.keymap.set({ 'n', 'v' }, '<leader>d', [["_d]])

-- increment/decrement numbers
vim.keymap.set('n', '<leader>+', '<C-a>') -- increment
vim.keymap.set('n', '<leader>-', '<C-x>') -- decrement

-- window management
vim.keymap.set('n', '<leader>sv', '<C-w>v') -- split window vertically
vim.keymap.set('n', '<leader>sh', '<C-w>s') -- split window horizontally
vim.keymap.set('n', '<leader>se', '<C-w>=') -- make split windows equal width & height
vim.keymap.set('n', '<leader>sx', ':close<CR>') -- close current split window

vim.keymap.set('n', '<leader>to', ':tabnew<CR>') -- open new tab
vim.keymap.set('n', '<leader>tx', ':tabclose<CR>') -- close current tab
vim.keymap.set('n', '<leader>tn', ':tabn<CR>') --  go to next tab
vim.keymap.set('n', '<leader>tp', ':tabp<CR>') --  go to previous tab

----------------------
-- Plugin Keybinds
----------------------
-- vim.keymap.set('n', '<leader>hm', "<cmd>lua require('harpoon.mark').add_file()<cr>") -- add file to harpoon
-- vim.keymap.set('n', '<leader>ho', "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>") -- toggle harpoon quick menu
-- vim.keymap.set('n', '<leader>hj', "<cmd>lua require('harpoon.ui').nav_file(1)<cr>") -- navigate to harpoon file 1
-- vim.keymap.set('n', '<leader>hk', "<cmd>lua require('harpoon.ui').nav_file(2)<cr>") -- navigate to harpoon file 2
-- vim.keymap.set('n', '<leader>hl', "<cmd>lua require('harpoon.ui').nav_file(3)<cr>") -- navigate to harpoon file 3
-- vim.keymap.set('n', '<leader>hh', "<cmd>lua require('harpoon.ui').nav_file(4)<cr>") -- navigate to harpoon file 4
-- vim.keymap.set('n', '<leader>hn', "<cmd>lua require('harpoon.ui').nav_next()<cr>") -- navigate to harpoon file 5
-- vim.keymap.set('n', '<leader>hp', "<cmd>lua require('harpoon.ui').nav_prev()<cr>") -- navigate to harpoon file 6

-- vim-maximizer
vim.keymap.set('n', '<leader>sm', ':MaximizerToggle<CR>') -- toggle split window maximization

-- nvim-tree
-- vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer

-- telescope
-- vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
-- vim.keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
-- vim.keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
-- vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
-- vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags
--
-- telescope git commands (not on youtube nvim video)
-- vim.keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
-- vim.keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
-- vim.keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
-- vim.keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]
--
-- restart lsp server (not on youtube nvim video)
vim.keymap.set('n', '<leader>rs', ':LspRestart<CR>') -- mapping to restart lsp if necessary

-- vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set('n', '<leader>zm', '<cmd>ZenMode<cr>') -- zen mode

-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>ef', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })
