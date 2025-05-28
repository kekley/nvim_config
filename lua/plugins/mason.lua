return{
    "mason-org/mason.nvim",
    opts = {
        ensure_installed = {
      "asmfmt",
      "autopep8",
      "beautysh",
      "clang-format",
      "cmakelang",
      "codelldb",
      "codespell",
      "cpplint",
      "csharpier",
      "htmlbeautifier",
      "htmlhint",
      "luacheck",
      "stylua",
      "textlint",
      "yamlfix",
      "gh",
      "gitui",
      "glow",
    },
        ui = {
            icons = {
                package_installed = "✓",
                package_pending = "➜",
                package_uninstalled = "✗"
            }
        }
    }
}
