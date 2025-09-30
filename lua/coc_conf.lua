vim.g.coc_global_extensions = {
	"coc-clangd",
	"coc-cmake",
	"coc-json",
	"coc-sumneko-lua",
	"@yaegassy/coc-pylsp",
}

vim.opt.updatetime = 300

vim.api.nvim_create_augroup("CocGroup", {})
vim.api.nvim_create_autocmd("CursorHold", {
	group = "CocGroup",
	command = "silent call CocActionAsync('highlight')",
	desc = "Highlight symbol under cursor on CursorHold"
})

function _G.check_back_space()
	local col = vim.fn.col('.') - 1
	return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end

function _G.show_docs()
	local cw = vim.fn.expand('<cword>')
	if vim.fn.index({'vim', 'help'}, vim.bo.filetype) >= 0 then
		vim.api.nvim_command('h ' .. cw)
	elseif vim.api.nvim_eval('coc#rpc#ready()') then
		vim.fn.CocActionAsync('doHover')
	else
		vim.api.nvim_command('!' .. vim.o.keywordprg .. ' ' .. cw)
	end
end

local opts_gen = {silent=true, noremap = true, expr = true}
local opts_ca = {silent=true}

vim.keymap.set('i', "<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', opts_gen)
vim.keymap.set('i', "<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], opts_gen)
vim.keymap.set("n", "<leader>qf", "<Plug>(coc-fix-current)", opts_ca)
vim.keymap.set("n", "<leader>em", "<Plug>(coc-codeaction-cursor)", opts_ca)
vim.keymap.set("n", "<leader>rn", "<Plug>(coc-rename)", opts_ca)
vim.keymap.set("n", "[g", "<Plug>(coc-diagnostic-prev)", opts_ca)
vim.keymap.set("n", "]g", "<Plug>(coc-diagnostic-next)", opts_ca)
vim.keymap.set("n", "<leader>cd", "<Plug>(coc-definition)", opts_ca)
vim.keymap.set("n", "<leader>ctd", "<Plug>(coc-type-definition)", opts_ca)
vim.keymap.set("n", "<leader>ci", "<Plug>(coc-implementation)", opts_ca)
vim.keymap.set("n", "<leader>cr", "<Plug>(coc-references)", opts_ca)
vim.keymap.set("n", "<leader>sd", "<Cmd>lua _G.show_docs()<CR>", opts_ca)
