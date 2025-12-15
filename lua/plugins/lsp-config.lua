return {
	"williamboman/mason-lspconfig.nvim",
	dependencies = {
		{
			"neovim/nvim-lspconfig",
			config = function()
				vim.lsp.enable("wgsl_analyzer")
				vim.lsp.config("gopls", {})
				vim.lsp.enable("gopls")
				vim.lsp.config("gdscript", {})
				vim.lsp.enable("gdscript")
				vim.lsp.config("csharp_ls", {})
				vim.lsp.enable("csharp_ls")
				vim.lsp.config("cssls", {})
				vim.lsp.enable("cssls")
				vim.lsp.config("html", {})
				vim.lsp.enable("html")
				vim.lsp.config("htmx", {})
				vim.lsp.enable("htmx")
				vim.lsp.config("typescript-language-server", {})
				vim.lsp.enable("typescript-language-server")
				vim.lsp.enable("basedpyright")
				vim.lsp.config("lua_ls", {})
				vim.lsp.enable("lua_ls")
				vim.lsp.config("clangd", {})
				vim.lsp.enable("clangd")
			end,
		},
		"williamboman/mason.nvim",
	},
}
