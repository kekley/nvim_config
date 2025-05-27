return{
	"mbbill/undotree",
    config = function()
    vim.keymap.set('n','<Leader>ut',vim.cmd.UndotreeToggle)
    end,
}
