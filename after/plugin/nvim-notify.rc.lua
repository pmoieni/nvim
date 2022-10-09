local status, n = pcall(require, "notify")
if not status then
	return
end

n.setup({
	background_colour = "#000000",
})

vim.notify = n
