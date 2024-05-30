
-- Lazy.nvim setup
require("lazy").setup({
  spec = {
    -- Import plugin configurations
    { import = "plugins" },
    { import = "nightfox" },
    { import = "telescope" },
  },
  defaults = {
    lazy = false, -- Load custom plugins at startup
    version = false, -- Use the latest commit for plugins
  },
  install = { colorscheme = { "nightfox" } },
  checker = { enabled = true, notify = false }, -- Automatically check for updates
})
