local status, lsp = pcall(require, "lsp-zero")
if not status then
	return
end

lsp.preset("recommended")
lsp.nvim_workspace()
lsp.setup()
