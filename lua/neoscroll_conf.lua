neoscroll = require('neoscroll')
local keymap = {
	["<C-Up>"] = function() neoscroll.ctrl_u({duration=250}) end;
	["<C-Down>"] = function() neoscroll.ctrl_d({duration=250}) end;
}
local modes = {'n', 'v', 'x'}
for key, func in pairs(keymap) do
	vim.keymap.set(modes, key, func)
end
