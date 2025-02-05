require("plugins")

require("gruvbox").setup({
  terminal_colors = true, -- add neovim terminal colors
  undercurl = true,
  underline = true,
  bold = true,
  italic = {
    strings = true,
    emphasis = true,
    comments = true,
    operators = false,
    folds = true,
  },
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  contrast = "hard", -- can be "hard", "soft" or empty string
  palette_overrides = {},
  overrides = {},
  dim_inactive = false,
  transparent_mode = false,
})

vim.cmd("colorscheme gruvbox")

vim.cmd("set number")
vim.cmd("set wrap!")
vim.cmd("set shiftwidth=4")
vim.cmd("set tabstop=4")


require("telescope").setup {
	extensions = {
		file_browser = {
			hijack_netrw = true
		}
	}
}
require("telescope").load_extension "file_browser"


vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>fv', builtin.find_files, { desc = 'Telescope find files' })


vim.opt.termguicolors = true
local bl = require("bufferline")
bl.setup({
	options = {
		mode = "tabs",
		separator_style = "slant"
	}
})

require('lualine').setup({
	options={theme='gruvbox'},
	sections={
		lualine_a={'mode'},
		lualine_b={'branch', 'diff', 'diagnostics'},
		lualine_c={'filename'},
		lualine_x={'encoding', 'fileformat', 'filetype'},
		lualine_y={'diff'},
		lualine_z={'location'}
	},
	inactive_sections={
		lualine_a={},
		lualine_b={},
		lualine_c={'filename'},
		lualine_x={'location'},
		lualine_y={},
		lualine_z={}
	},
	tabline={},
	winbar={},
	inactive_winbar={},
	extensions={}
})

vim.keymap.set('n', '<leader>nt', '<cmd>tabnew<cr>', { desc = 'Open new tab' })
vim.keymap.set('n', '<leader>ct', '<cmd>tabclose<cr>', { desc = 'Close current tab' })
