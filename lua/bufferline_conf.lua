local bl = require("bufferline")
bl.setup({
	highlights = {
		indicator_selected = {
			fg = "#d65d0e",
			bg = "#282828",
		},
		indicator_visible = {
			fg = "#d65d0e",
			bg = "#282828",
		},
	},
	options = {
		mode = "tabs",
		max_name_length = 24,
		tab_size = 24,
		diagnostics = "coc",
		diagnostics_update_in_insert = true,
		indicator = {
			icon = "█",
		},
		separator_style = "thick",
		enforce_regular_tabs = true,
	}
})

vim.keymap.set('n', '<leader>nt', '<cmd>tabnew<cr>', { desc = 'Open new tab' })
vim.keymap.set('n', '<leader>ct', '<cmd>tabclose<cr>', { desc = 'Close current tab' })
