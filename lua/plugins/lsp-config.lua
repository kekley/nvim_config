-- lua/plugins.lua or similar

return {
	-- LSP Configuration

	{
		"williamboman/mason.nvim",
		-- No specific config needed here if defaults are fine,
		-- or add its own config = function() ... end block if needed
	},

	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = { "williamboman/mason.nvim", "neovim/nvim-lspconfig" },
		-- No specific top-level config needed for mason-lspconfig itself usually,
		-- it's used by nvim-lspconfig's config.
	},

	{
		"neovim/nvim-lspconfig",
		dependencies = {
			-- Crucially, mason-lspconfig.nvim is listed as a dependency here
			-- so lazy.nvim ensures it's loaded before this config function runs.
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
			"hrsh7th/cmp-nvim-lsp", -- if you use nvim-cmp
		},
		config = function()
			local lspconfig = require("lspconfig")
			local mason_lspconfig = require("mason-lspconfig")
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			mason_lspconfig.setup({
				ensure_installed = {
					"lua_ls",
					"rust_analyzer",
					"asm_lsp",
					"clangd",
					"csharp_ls",
					"cssls",
					"glsl_analyzer",
					"html",
					"hyprls",
					"jsonls",
					"marksman",
					"wgsl_analyzer",
					"yamlls",
				},
			})
		end,
	},

	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"L3MON4D3/LuaSnip",
			"saadparwaiz1/cmp_luasnip",
		},
		config = function()
			local cmp = require("cmp")
			local luasnip = require("luasnip")

			cmp.setup({
				snippet = {
					expand = function(args)
						luasnip.lsp_expand(args.body)
					end,
				},
				mapping = cmp.mapping.preset.insert({
					["<C-b>"] = cmp.mapping.scroll_docs(-4),
					["<C-f>"] = cmp.mapping.scroll_docs(4),
					["<C-Space>"] = cmp.mapping.complete(),
					["<C-e>"] = cmp.mapping.abort(),
					["<CR>"] = cmp.mapping.confirm({ select = true }),
					["<Tab>"] = cmp.mapping(function(fallback)
						if cmp.visible() then
							cmp.select_next_item()
						elseif luasnip.expand_or_jumpable() then
							luasnip.expand_or_jump()
						else
							fallback()
						end
					end, { "i", "s" }),
					["<S-Tab>"] = cmp.mapping(function(fallback)
						if cmp.visible() then
							cmp.select_prev_item()
						elseif luasnip.jumpable(-1) then
							luasnip.jump(-1)
						else
							fallback()
						end
					end, { "i", "s" }),
				}),
				sources = cmp.config.sources({
					{ name = "nvim_lsp" },
					{ name = "luasnip" },
					{ name = "buffer" },
					{ name = "path" },
				}),
				formatting = {
					format = function(entry, vim_item)
						vim_item.kind =
							require("lspkind").cmp_format({ mode = "symbol_text", maxwidth = 50 })(entry, vim_item)

						if entry.completion_item.data and entry.completion_item.data.import then
							vim_item.menu = (vim_item.menu or "")
								.. " [AutoImport: "
								.. entry.completion_item.data.import
								.. "]"
						end
						return vim_item
					end,
				},
				experimental = {
					ghost_text = true,
				},
			})
		end,
	},

	{
		"onsails/lspkind.nvim",
	},
}
