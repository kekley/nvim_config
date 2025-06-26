return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			python = { "black", lsp_format = "fallback" },
			css = { "prettierd", lsp_format = "fallback" },
			lua = { "stylua" },
			rust = { "rustfmt", lsp_format = "fallback" },
			javascript = { "eslint_d", lsp_format = "fallback" },
		},
		format_on_save = {
			timeout_ms = 500,
			lsp_format = "fallback",
		},
	},
}
