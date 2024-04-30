require "nvchad.mappings"

-- add yours here
local map = vim.keymap.set

map("n", "<leader>tn", "<Cmd>set nu!<CR>", { desc = "Toggle Line number" })
map('n', '<Leader>ni', '<Cmd>Neorg index<CR>', { desc = 'Open Neorg index' })
map('n', '<Leader>nt', '<Cmd>Neorg toggle-concealer<CR>', { desc = 'Neorg toggle concealer' })
map('n', '<Leader>nj', '<Cmd>Neorg journal today<CR>', { desc = 'Neorg journal today' })
map('n', '<Leader>nm', '<Cmd>Neorg inject-metadata<CR>', { desc = 'Neorg inject metadata' })
map('n', '<Leader>ng', '/* Summary<CR>jVGd<Cmd>Neorg generate-workspace-summary<CR>', { desc = 'Neorg generate workspace summary' })
map('n', '<Leader>o', '<Cmd>Oil --float<CR>', { desc = 'Open Oil' })
map('n', '<Leader>aa', '<Cmd>AerialToggle!<CR>', { desc = 'Aerial Toggle' })

local bufnr = vim.api.nvim_get_current_buf()
map(
  'n',
  '<Leader>ar',
  function()
    vim.cmd.RustLsp('codeAction')
  end,
  { desc = 'Open Rustaceanvim', silent = true, buffer = bufnr }
)


map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
