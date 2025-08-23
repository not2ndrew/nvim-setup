return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			-- Allows extra capabilities provided by blink.cmp
			"saghen/blink.cmp",
			{ "j-hui/fidget.nvim", opts = {} },
		},
		config = function()
			local lspconfig = require("lspconfig")

			-- Configure Diagnostic displays (virtual texts, etc.)
			vim.diagnostic.config({
				virtual_text = {
					enable = true,
				},
				-- All of these are set according to their default values.
				signs = true,
				underline = true,
				update_in_insert = false,
				severity_sort = false,
			})

			-- Set up lua-language-server manually
			lspconfig.lua_ls.setup {
				settings = {
					Lua = {
						runtime = {
							version = "LuaJIT", -- Neovim uses LuaJIT
						},
						diagnostics = {
							globals = { "vim" }, -- Prevent 'vim' is undefined
						},
						workspace = {
							library = vim.api.nvim_get_runtime_file("", true),
							checkThirdParty = false, -- No prompt for 3rd party
							maxPreload = 1000, -- Reduce preload
							preloadFileSize = 100, -- Skip large files.
						},
						telemetry = {
							enable = false, -- Disable telemetry
						},
					},
				},
			}

			lspconfig.zls.setup {
				cmd = { "zls" }, -- omit if it's in PATH
				filetypes = { "zig" },
				root_dir = lspconfig.util.root_pattern("build.zig", ".git"),
			}
		end
	}
}


