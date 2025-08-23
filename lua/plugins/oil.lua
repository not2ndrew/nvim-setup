return {
	{
		'stevearc/oil.nvim',
		---@module 'oil'
		---@type oil.SetupOpts
		opts = {},
		-- Optional dependencies
		dependencies = { { "echasnovski/mini.icons", opts = {} } },
		-- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
		-- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
		lazy = false,
		config = function ()
			require("oil").setup{
				columns = { "icon" },
				keymaps = {
					["<C-s>"] = false,
					["<C-h>"] = false,
					["<C-t>"] = false,
				},
				view_options = {
					show_hidden = true,
				},
			}
			-- vim.keymap.set("n", "<space>e", require("oil").toggle_float)
			vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
		end,
	}
}
