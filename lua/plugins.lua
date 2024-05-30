
-- [[ Configure and install plugins ]]
--
--  To check the current status of your plugins, run
--    :Lazy
--
--  You can press `?` in this menu for help. Use `:q` to close the window
--
--  To update plugins you can run
--    :Lazy update
--
-- NOTE: Install plugins here!
require("lazy").setup({
	-- NOTE: Plugins can be added with a link (or for a github repo: 'owner/repo' link).
	"tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically

	-- See `:help gitsigns` to understand what the configuration keys do
	{
		"lewis6991/gitsigns.nvim", -- Adds git related signs to the gutter, as well as utilities for managing changes
		opts = {
			signs = {
				add = { text = "┃" },
				change = { text = "┃" },
				delete = { text = "_" },
				topdelete = { text = "‾" },
				changedelete = { text = "~" },
				untracked = { text = "┆" },
			},
		},
	},

	{ -- Useful plugin to show you pending keybinds.
		"folke/which-key.nvim",
		event = "VimEnter", -- Sets the loading event to 'VimEnter'
		config = function() -- This is the function that runs, AFTER loading
			require("which-key").setup()

			-- Document existing key chains
			require("which-key").register({
				["<leader>c"] = { name = "[C]ode", _ = "which_key_ignore" },
				["<leader>d"] = { name = "[D]ocument", _ = "which_key_ignore" },
				["<leader>r"] = { name = "[R]ename", _ = "which_key_ignore" },
				["<leader>s"] = { name = "[S]earch", _ = "which_key_ignore" },
				["<leader>w"] = { name = "[W]orkspace", _ = "which_key_ignore" },
				["<leader>t"] = { name = "[T]oggle", _ = "which_key_ignore" },
				["<leader>h"] = { name = "Git [H]unk", _ = "which_key_ignore" },
			})
			-- visual mode
			require("which-key").register({
				["<leader>h"] = { "Git [H]unk" },
			}, { mode = "v" })
		end,
	},

    -- Nightfox theme for neovim
	{
		"EdenEast/nightfox.nvim",
		lazy = false,
		opts = {
			options = {
				transparent = true,
			},
		},
		groups = {
		  all = {
			NormalFloat = { fg = "fg1", bg = "bg1"},
			NeotreeNormal = { bg = "NONE" }, -- For neotree background
			NeotreeNormalNC = { bg = "NONE" }, -- For non-current window in neotree
		  },
		},
	},

    -- Telescope
    {
      'nvim-telescope/telescope.nvim', tag = '0.1.5',
      requires = { 'nvim-lua/plenary.nvim' }
    },

})
