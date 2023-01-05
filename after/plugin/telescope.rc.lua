local status, telescope = pcall(require, "telescope")
if not status then
	return
end

local builtin = require("telescope.builtin")

telescope.setup({})

local map = vim.keymap.set

map("n", ";tf", function()
	builtin.find_files({
		no_ignore = false,
		hidden = true,
	})
end)
map("n", ";tg", function()
	builtin.live_grep()
end)
map("n", "\\\\", function()
	builtin.buffers()
end)
map("n", ";th", function()
	builtin.help_tags()
end)
map("n", ";;", function()
	builtin.resume()
end)
map("n", ";td", function()
	builtin.diagnostics()
end)
