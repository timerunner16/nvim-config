vim.g.coc_global_extensions = {
	"coc-clangd",
	"coc-cmake",
	"coc-json",
	"coc-sumneko-lua",
}

vim.opt.updatetime = 300

vim.api.nvim_create_augroup("CocGroup", {})
vim.api.nvim_create_autocmd("CursorHold", {
	group = "CocGroup",
	command = "silent call CocActionAsync('highlight')",
	desc = "Highlight symbol under cursor on CursorHold"
})

vim.keymap.set("n", "<leader>rn", "<Plug>(coc-rename)", {silent=true})
