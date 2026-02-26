vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set('t', '<ESC>', '<C-\\><C-n>', { noremap = true })
vim.keymap.set('n', '<leader>t', '<cmd>terminal<CR>', { desc = 'Open terminal in current tab' })
vim.keymap.set('n', '<C-H>', '<cmd>wincmd h<CR>', { noremap = true, silent = true, desc = 'Swap to pane left' })
vim.keymap.set('n', '<C-J>', '<cmd>wincmd j<CR>', { noremap = true, silent = true, desc = 'Swap to pane below' })
vim.keymap.set('n', '<C-U>', '<cmd>wincmd k<CR>', { noremap = true, silent = true, desc = 'Swap to pane above' })
vim.keymap.set('n', '<C-K>', '<cmd>wincmd l<CR>', { noremap = true, silent = true, desc = 'Swap to pane right' })

vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
vim.opt.foldmethod = 'expr'
vim.opt.foldlevelstart = 99
