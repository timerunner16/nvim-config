local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
		vim.cmd [[packadd packer.nvim]]
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

local pckrgroup = vim.api.nvim_create_augroup('packer_user_config', {clear = true})
vim.api.nvim_clear_autocmds({group = "packer_user_config"})
vim.api.nvim_create_autocmd({'BufWritePost'}, {
	pattern = 'plugins.lua',
	group = pckrgroup,
	command = 'source <afile> | PackerCompile',
})

return require('packer').startup(function(use)
	-- Editor plugins
	use {'nvim-tree/nvim-web-devicons'}

	use {'ellisonleao/gruvbox.nvim'}

	use {'nvim-lua/plenary.nvim'}
	use {'nvim-telescope/telescope.nvim', tag = '0.1.8'}
	use {'nvim-telescope/telescope-file-browser.nvim'}

	use {'akinsho/bufferline.nvim', tag= '*' }
	use {'nvim-lualine/lualine.nvim'}

	use {'karb94/neoscroll.nvim'}

	use {'stevearc/overseer.nvim'}

	-- LSP/Debug
	use {'neoclide/coc.nvim', branch = 'release'}

	-- Build plugins
	use {'Zeioth/compiler.nvim'}

	-- Games
	use {'alec-gibson/nvim-tetris'}
	use {'seandewar/nvimesweeper'}

	-- GLSL plugins
	use {'tikhomirov/vim-glsl'}

	if packer_bootstrap then
		require('packer').sync()
	end
end)
