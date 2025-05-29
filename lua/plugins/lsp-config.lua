return {
	"williamboman/mason-lspconfig.nvim",
	dependencies = {
		{
			"neovim/nvim-lspconfig",
			confing = function()
				vim.lsp.enable("rust_analyzer")
				vim.lsp.enable("lua_ls")
			end,
		},
		"williamboman/mason.nvim",
	},
}
