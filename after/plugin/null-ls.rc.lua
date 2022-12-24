local status, null_ls = pcall(require, "null-ls")
if not status then
	return
end

local augroup_format = vim.api.nvim_create_augroup("Format", { clear = true })

-- diagnostic sources
local diagnostics = null_ls.builtins.diagnostics

-- formatting sources
local formatting = null_ls.builtins.formatting

-- code actions sources
local code_actions = null_ls.builtins.code_actions

null_ls.setup({
	sources = {
		diagnostics.golangci_lint,
		code_actions.eslint_d,
		formatting.prettierd,
		formatting.gofmt,
		formatting.goimports,
		formatting.goimports_reviser,
		formatting.golines,
		formatting.stylua,
	},
	on_attach = function(client, bufnr)
		if client.server_capabilities.documentFormattingProvider then
			vim.api.nvim_clear_autocmds({ buffer = 0, group = augroup_format })
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup_format,
				buffer = 0,
				callback = function()
					vim.lsp.buf.format()
				end,
			})
		end
	end,
})
