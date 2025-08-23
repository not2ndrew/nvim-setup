-- Line numbers
vim.o.number = true -- Make line numbers
vim.o.relativenumber = true -- Make line numbers relative

-- Clipboard and mouse
vim.o.clipboard = "unnamedplus" -- Sync between OS and Neovim
vim.o.mouse = "a" -- Enable mouse mode

-- Wrapping and indentation
vim.o.wrap = false -- Display lines as one long line
vim.o.linebreak = true -- Companion to wrap, don't split words
vim.o.autoindent = true -- Copy indent from current line when starting new one
vim.o.breakindent = true -- Enable break indent

-- Searching
vim.o.ignorecase = true -- Case insensitive searching unless uppercase used
vim.o.smartcase = true -- Smart case

-- Tabs and indentation width
vim.o.shiftwidth = 4 -- Spaces inserted for each indentation
vim.o.tabstop = 4 -- Spaces inserted for a tab
vim.o.softtabstop = 4 -- Spaces a tab counts for while editing

-- Cursor and scrolling
vim.o.cursorline = true -- Highlight the line the cursor is on
vim.o.scrolloff = 18 -- Keep lines visible above and below cursor

-- Window splitting behavior
vim.o.splitbelow = true -- Horizontal splits go below current window
vim.o.splitright = true -- Vertical splits go to the right of current window

-- UI and mode
vim.o.showmode = false -- Don't show mode (usually shown in status line)

-- Shared Data
vim.o.shadafile = 'NONE'
