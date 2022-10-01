local status, n = pcall(require, "notify")
if not status then
	return
end

n.setup({})

vim.notify = n
