local status, tree = pcall(require, "nvim-tree")
if not status then
	return
end

tree.setup({
	open_on_setup = true,
	sort_by = "case_sensitive",
	view = {
		adaptive_size = true,
		mappings = {
			list = {
				{ key = "u", action = "dir_up" },
			},
		},
	},
	renderer = {
		group_empty = true,
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
