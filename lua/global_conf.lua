vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.hls = false
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set('t', '<ESC>', '<C-\\><C-n>', { noremap = true })
vim.keymap.set('n', '<leader>t', '<cmd>terminal<CR>', { desc = 'Open terminal in current tab' })
vim.keymap.set('n', '<C-H>', '<cmd>wincmd h<CR>', { noremap = true, silent = true, desc = 'Swap to pane left' })
vim.keymap.set('n', '<C-J>', '<cmd>wincmd j<CR>', { noremap = true, silent = true, desc = 'Swap to pane below' })
vim.keymap.set('n', '<C-U>', '<cmd>wincmd k<CR>', { noremap = true, silent = true, desc = 'Swap to pane above' })
vim.keymap.set('n', '<C-K>', '<cmd>wincmd l<CR>', { noremap = true, silent = true, desc = 'Swap to pane right' })
