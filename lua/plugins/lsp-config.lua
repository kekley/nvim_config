return {
	"williamboman/mason-lspconfig.nvim",
	dependencies = {
		{
			"neovim/nvim-lspconfig",
			config = function()
				vim.lsp.config("cssls", {})
				vim.lsp.enable("cssls")
				vim.lsp.config("html", {})
				vim.lsp.enable("html")
				vim.lsp.config("htmx", {})
				vim.lsp.enable("htmx")
				vim.lsp.config("typescript-language-server", {})
				vim.lsp.enable("typescript-language-server")
				vim.lsp.config("pyright", {})
				vim.lsp.enable("pyright")
				vim.lsp.config("lua_ls", {})
				vim.lsp.enable("lua_ls")
				vim.lsp.config("clangd", { init_options = { compilationDatabasePath = "./" } })
				vim.lsp.enable("clangd")
			end,
		},
		"williamboman/mason.nvim",
	},
}
