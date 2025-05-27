return{
    "nvim-tree/nvim-tree.lua",
    config = function()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    vim.opt.termguicolors = true
    require("nvim-tree").setup({
        git = {
            enable=true,
        },
        renderer = {
            icons = {
                show = {
                    git = true,
                }
            }
        },
        diagnostics={
            enable=true,
        },
        filters = {

    }
    })
end,
}
