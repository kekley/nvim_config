return {
	"williamboman/mason-lspconfig.nvim",
	dependencies = {
		{
			"neovim/nvim-lspconfig",
			config = function()
				vim.lsp.config("rust_analyzer", {})
				vim.lsp.enable("rust_analyzer")
				vim.lsp.config("lua_ls", {})
				vim.lsp.enable("lua_ls")
			end,
		},
		"williamboman/mason.nvim",
	},
}
