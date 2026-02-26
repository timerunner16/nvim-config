--[[
	OUT OF USE UNTIL IMPROVED
--]]

require("better-tabs").setup()

vim.keymap.set('n', '<leader>nt', '<cmd>BetterVSplit<cr>', { desc = 'Split new tab' })
vim.keymap.set('n', '<leader>ct', '<cmd>BetterTabsCloseBuffer<cr>', { desc = 'Close current tab' })
vim.keymap.set('n', '<leader><Right>', '<cmd>BetterTabsNextBuffer<cr>', { desc = 'Goto next tab' })
vim.keymap.set('n', '<leader><Left>', '<cmd>BetterTabsPrevBuffer<cr>', { desc = 'Goto prev tab' })
vim.keymap.set('n', '<leader><C-Right>', '<cmd>BetterTabsMoveNext<cr>', { desc = 'Move to next window' })
vim.keymap.set('n', '<leader><C-Left>', '<cmd>BetterTabsMovePrev<cr>', { desc = 'Move to prev window' })
