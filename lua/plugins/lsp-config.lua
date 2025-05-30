return {
	"williamboman/mason-lspconfig.nvim",
	dependencies = {
		{
			"neovim/nvim-lspconfig",
			config = function()
				vim.lsp.config("lua_ls", {})
				vim.lsp.enable("lua_ls")
				vim.lsp.config("clangd", { init_options = { compilationDatabasePath = "./" } })
				vim.lsp.enable("clangd")
			end,
		},
		"williamboman/mason.nvim",
	},
}
