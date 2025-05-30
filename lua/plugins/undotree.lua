return {
	"mbbill/undotree",
	config = function()
		vim.g.undotree_DiffCommand = "FC"
		vim.keymap.set("n", "<Leader>ut", vim.cmd.UndotreeToggle)
	end,
}
