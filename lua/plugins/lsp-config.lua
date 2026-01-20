return {
	"williamboman/mason-lspconfig.nvim",
	dependencies = {
		{
			"neovim/nvim-lspconfig",
			config = function()
				local coq = require("coq")
				vim.lsp.config("qmlls", coq.lsp_ensure_capabilities({}))
				vim.lsp.enable("qmlls")
				vim.lsp.config("wgsl_analyzer", coq.lsp_ensure_capabilities({}))
				vim.lsp.enable("wgsl_analyzer")
				vim.lsp.config("gopls", coq.lsp_ensure_capabilities({}))
				vim.lsp.enable("gopls")
				vim.lsp.config("gdscript", coq.lsp_ensure_capabilities({}))
				vim.lsp.enable("gdscript")
				vim.lsp.config("csharp_ls", coq.lsp_ensure_capabilities({}))
				vim.lsp.enable("csharp_ls")
				vim.lsp.config("cssls", coq.lsp_ensure_capabilities({}))
				vim.lsp.enable("cssls")
				vim.lsp.config("html", coq.lsp_ensure_capabilities({}))
				vim.lsp.enable("html")
				vim.lsp.config("htmx", coq.lsp_ensure_capabilities({}))
				vim.lsp.enable("htmx")
				vim.lsp.config("typescript-language-server", coq.lsp_ensure_capabilities({}))
				vim.lsp.enable("typescript-language-server")
				vim.lsp.enable("basedpyright")
				vim.lsp.config("lua_ls", coq.lsp_ensure_capabilities({}))
				vim.lsp.enable("lua_ls")
				vim.lsp.config("clangd", coq.lsp_ensure_capabilities({}))
				vim.lsp.enable("clangd")
			end,
		},
		"williamboman/mason.nvim",
	},
}
