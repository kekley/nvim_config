return {
	"RileyGabrielson/inspire.nvim",
	priority = 1000,
	config = function()
		require("inspire").setup({ mode = "random" })
	end,
}
