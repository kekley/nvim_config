return {
    "mason-org/mason-lspconfig.nvim",
    opts = {
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
     handlers = {}
    },
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },
}
