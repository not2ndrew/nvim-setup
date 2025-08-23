require("core.options")
require("core.keymaps")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		error("Error cloning lazy.nvim:\n" .. out)
	end
end

---@type vim.Option
local rtp = vim.opt.rtp
rtp:prepend(lazypath)
require("lazy").setup({
	require("plugins.colortheme"),
	require("plugins.lualine"),
	-- require("plugins.neotree"),
	require("plugins.treesitter"),
	require("plugins.telescope"),
	require("plugins.lsp"),
	require("plugins.autocompletion"),
	require("plugins.autopair"),
	require("plugins.toggleterm"),
	require("plugins.oil"),
}, {
	lazy = false,
})

-- Terminal Safety
-- If someone were to open nvim within nvim terminal, it will stop immediately

if vim.env.NVIM then
	vim.api.nvim_err_writeln("Cannot run Neovim within Neovim Terminal!")
	vim.cmd("quit")
end
