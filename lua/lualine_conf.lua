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
