require('overseer').setup()
require('compiler').setup()
vim.keymap.set('n', '<leader>bp', '<cmd>CompilerOpen<cr>', { desc = 'Open compiler window' })
vim.keymap.set('n', '<leader>bc', '<cmd>CompilerToggleResults<cr>', { desc = 'Open compiler window' })
