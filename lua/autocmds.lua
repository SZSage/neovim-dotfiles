
-- adds transparency to specific nvim windows
vim.cmd [[
  highlight NormalFloat guibg=NONE
  highlight FloatBorder guibg=NONE
  highlight NvimTreeNormal guibg=NONE
  highlight LazyTerm guibg=NONE
]]


-- fixes colorscheme not matching
vim.opt.termguicolors = true

