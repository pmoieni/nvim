local status, saga = pcall(require, "lspsaga")
if not status then
	return
end

saga.init_lsp_saga({
	server_filetype_map = {
		typescript = "typescript",
	},
})

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("n", "<C-j>", "<Cmd>Lspsaga diagnostic_jump_next<CR>", opts)
map("n", "K", "<Cmd>Lspsaga hover_doc<CR>", opts)
map("n", "gd", "<Cmd>Lspsaga lsp_finder<CR>", opts)
map("i", "<C-k>", "<Cmd>Lspsaga signature_help<CR>", opts)
map("n", "gp", "<Cmd>Lspsaga preview_definition<CR>", opts)
map("n", "gr", "<Cmd>Lspsaga rename<CR>", opts)
