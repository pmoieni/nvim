local status, tree = pcall(require, "nvim-tree")
if not status then
	return
end

tree.setup({
	open_on_setup = true,
	sort_by = "case_sensitive",
	view = {
		adaptive_size = true,
	},
	renderer = {
		highlight_git = true,
	},
	git = {
		ignore = false,
	},
	diagnostics = {
		enable = true,
		show_on_dirs = true,
	},
})
