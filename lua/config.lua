-- Useful Variables
local opt = vim.opt
local g = vim.g
local cmd = vim.cmd
local api = vim.api

-- Theme
--cmd("colorscheme tokyonight-night")
cmd("colorscheme tokyonight-storm")
--cmd("colorscheme tokyonight-day")
--cmd("colorscheme tokyonight-moon")

-- backup files 
opt.backup = false           -- creaets a backup file

-- Setup nvim-cmp.
opt.completeopt = { "menuone", "noinsert", "noselect" }

-- Editor Stuff
opt.expandtab = true
opt.hidden = true
opt.list = true
opt.number = true
opt.relativenumber = true
opt.shiftwidth = 2
opt.smartcase = true
opt.smartindent = true
opt.splitbelow = true    -- force all horizontal splits to go below current window
opt.splitright = true    -- force all vertical splits to go to the right of current window
opt.tabstop = 2
opt.termguicolors = true
opt.wildmode = { "list", "longest" }
opt.mouse = "a"
opt.pumheight = 10            -- pop up menu height
opt.showtabline = 2           -- always show tabs
-- opt.cmdheight = 2


-- Clipboard
opt.clipboard = "unnamedplus"    -- allows neovim to access the system clipboard
-- require("neoclip").setup({})

-- Configure Statusline
-- require("feline").setup()
require("lualine").setup({
	options = {
		theme = "auto",
	},
})

-- Configure Indent Backlines
opt.list = true
-- opt.listchars:append("space:⋅")

require("indent_blankline").setup({
	-- space_char_blankline = " ",
	show_current_context = true,
})

-- Configure Tree
require("nvim-tree").setup({
	view = {
		adaptive_size = true,
	},
})

-- Configure Nvim Project
require("project_nvim").setup({})
require("telescope").load_extension("projects")

-- Configure Focus
-- require("focus").setup()

-- Configure Autosave
require("auto-save").setup({
	enabled = false,
	execution_message = {
		message = function() -- message to print on save
			return ("AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"))
		end,
		dim = 0.18, -- dim the color of `message`
		cleaning_interval = 1250, -- (milliseconds) automatically clean MsgArea after displaying `message`. See :h MsgArea
	},
	events = { "BufLeave" },
	condition = function(buf)
		local fn = vim.fn
		local utils = require("auto-save.utils.data")
		if fn.getbufvar(buf, "&modifiable") == 1 and utils.not_in(fn.getbufvar(buf, "&filetype"), {}) then
			return true -- met condition(s), can save
		end
		return false -- can't save
	end,
	write_all_buffers = false,
	debounce_delay = 10 * 60 * 1000,
	callbacks = { -- functions to be executed at different intervals
		enabling = nil, -- ran when enabling auto-save
		disabling = nil, -- ran when disabling auto-save
		before_asserting_save = nil, -- ran before checking `condition`
		before_saving = nil, -- ran before doing the actual save
		after_saving = nil, -- ran after doing the actual save
	},
})

-- Configure Autopairs
require("nvim-autopairs").setup({})

-- Easymotion
require("hop").setup()
