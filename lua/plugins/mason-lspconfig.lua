return {
	"mason-org/mason-lspconfig.nvim",
	opts = {
		ensure_installed = {"lua_ls","rust_analyzer","asm-lsp","asmfmt","autopep8","bash-language-server","beautysh","clangd","clang-format","cmake-language-server","cmakelang","codelldb","cmakelint","codespell","cpplint","cpptools","csharp-language-server","csharpier","css-lsp","css-variables-language-server","cssmodules-language-server","gdtoolkit","gh","gitui","glow","glsl-analyzer","html-lsp","htmlbeautifier","htmlhint","hyprls","json-lsp","luacheck","luaformatter","markdown-oxide","ty","r-languageserver","systemd-language-server","textlint","textlsp","wasm-language-tools","wgsl-analyzer","yaml-language-server","yamlfix"},
	},
	dependencies = {
		{"mason-org/mason.nvim", opts = {}},
		"neovim/nvim-lspconfig",
	},
}
