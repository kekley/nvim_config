return {
	"mbbill/undotree",
	config = function()
		if vim.fn.executable("FC") == 1 then
			vim.g.undotree_DiffCommand = "FC"
		end
		if vim.fn.executable("diff") == 1 then
			vim.g.undotree_DiffCommand = "diff"
		end
		vim.keymap.set("n", "<Leader>ut", vim.cmd.UndotreeToggle)
	end,
}
