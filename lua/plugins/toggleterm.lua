return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			-- Optional settings
			open_mapping = [[<c-\>]], -- Default toggle key
			direction = "float", -- You can change this to 'horizontal' or 'vertical'
			float_opts = {
				border = "curved",
			},
		})
	end,
}
