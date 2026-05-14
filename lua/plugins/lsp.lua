return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"saghen/blink.cmp",
			{ "j-hui/fidget.nvim", opts = {} },
		},
		config = function ()
			-- Disable snippet jump points when autocompleting snippets.
			local capabilities = require('blink.cmp').get_lsp_capabilities({
					textDocument = {
						completion = {
							completionItem = {
								snippetSupport = false,
							}
						}
					}
				})
			-- Apply to ALL LSP
			vim.lsp.config("*", {
				capabilities = capabilities,
			})

			-- Diagnostics
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


			-- Lua LSP
			vim.lsp.config("lua_ls", {
				-- Remove Snippet jump points when auto completing.
                cmd = { "lua" },
				filetypes = { "lua" },
				root_markers = {
					'.luarc.json',
					'.luarc.jsonc',
					'.luacheckrc',
					'.stylua.toml',
					'stylua.toml',
					'selene.toml',
					'selene.yml',
					'.git',
				},
				settings = {
					Lua = {
						runtime = {
							version = "LuaJIT",
						},
						diagnostics = {
							global = { "vim" }, -- Prevent 'vim' is undefined
						},
						workspace = {
							library = vim.api.nvim_get_runtime_file("", true),
							checkThridParty = false, -- No prompt for 3rd party
							maxPreload = 1000, -- Reduce preload
							preloadFileSize = 100, --  Skip large files
						},
						telemetry = {
							enable = false -- Disable telemetry
						},
					},
				},
			})

			-- -- Zig LSP
			vim.lsp.config("zls", {
				cmd = { 'zls' },
				filetypes = { 'zig', 'zir' },
				root_markers = { 'zls.json', 'build.zig', '.git' },
			})

			vim.lsp.enable({
				"lua_ls",
				"zls",
			})
		end
	}
}
