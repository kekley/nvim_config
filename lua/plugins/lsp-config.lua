return {
	"williamboman/mason-lspconfig.nvim",
	dependencies = {
		{
			"neovim/nvim-lspconfig",
			config = function()
				vim.lsp.enable("lua_ls")
				vim.lsp.enable("rust_analyzer")
			end,
		},
		"williamboman/mason.nvim",
		"simrat39/rust-tools.nvim",
	},
}
