require "nvchad.options"

-- add yours here!
vim.o.guifont = "GeistMono NFM"
vim.opt.scrolloff = 10

-- mapping scaling commands for neovide
vim.g.neovide_scale_factor = 1.0

local change_scale_factor = function(delta)
  vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
end

vim.keymap.set('n', '<C-=>', function()
  change_scale_factor(1.1)
end)

vim.keymap.set('n', '<C-->', function()
  change_scale_factor(1/1.1)
end)


-- Plugin setups
require 'nvim-treesitter.install'.compilers = { 'clang' }
require('oil').setup()
require('persistence').setup()

-- Aerial keybinding
require('aerial').setup({
  on_attach = function(bufnr)
    vim.keymap.set('n', '{', '<Cmd>AerialPrev<CR>', { buffer = bufnr })
    vim.keymap.set('n', '}', '<Cmd>AerialNext<CR>', { buffer = bufnr })
  end
})
-- Indent Blankline setup
local highlight = {
  "Red",
  "Orange",
  "Yellow",
  "Green",
  "Aqua",
  "Blue",
}

local scope_highlight = "Scope"

local hooks = require 'ibl.hooks'
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
  vim.api.nvim_set_hl(0, "Red", {fg = "#c46465"})
  vim.api.nvim_set_hl(0, "Orange", {fg = "#d7a260"})
  vim.api.nvim_set_hl(0, "Yellow", {fg = "#e2b977"})
  vim.api.nvim_set_hl(0, "Green", {fg = "#96b47e"})
  vim.api.nvim_set_hl(0, "Aqua", {fg = "#6eaa98"})
  vim.api.nvim_set_hl(0, "Blue", {fg = "#758b9e"})
  vim.api.nvim_set_hl(0, "Scope", {fg = "#79a6cb"})
end)
require('ibl').setup {
  exclude = {
    filetypes = { "dashboard" },
  },
  scope = {
    highlight = scope_highlight,
    char = '‖',
  },
  indent = {
    highlight = highlight,
    char = '⏐',
  }
}

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
