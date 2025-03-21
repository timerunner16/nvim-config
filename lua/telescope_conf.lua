local builtin = require('telescope.builtin')
local file_browser = require('telescope').extensions.file_browser
require("telescope").setup {
	extensions = {
		file_browser = {
			hijack_netrw = true
		}
	}
}
require("telescope").load_extension "file_browser"

vim.keymap.set('n', '<leader>fv', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fb', file_browser.file_browser, { desc = 'Telescope file browser' })
