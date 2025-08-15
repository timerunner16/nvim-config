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

local opts = {silent=true,noremap=true,expr=true}
vim.keymap.set('i', "<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', opts)
vim.keymap.set('i', "<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], opts)
vim.keymap.set("n", "<leader>qf", "<plug>(coc-fix-current)", opts)
vim.keymap.set("n", "<leader>em", "<plug>(coc-codeaction-cursor)", opts)
