local status_ok, alpha = pcall(require, 'alpha')
if not status_ok then
  return
end

local version = vim.version()
local dashboard = require('alpha.themes.dashboard')
dashboard.section.header.val = {
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀",
"⠰⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠆",
"⠀⢻⣷⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⣾⡟⠀",
"⠀⠀⠻⣿⣿⣦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣴⣿⣿⠟⠀⠀",
"⠀⠀⠀⠙⣿⣿⣿⣿⣦⠀⠀⠀⠀⠀⠀⣰⣆⠀⠀⠀⠀⠀⠀⣴⣿⣿⣿⣿⠋⠀⠀⠀",
"⠀⠀⠀⠀⠈⠻⣿⡿⠋⠀⠀⠀⠀⣠⣾⣿⣿⣷⣄⠀⠀⠀⠀⠙⢿⣿⠟⠁⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⡎⢿⣿⣿⣿⣿⡿⢱⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⣤⣶⣾⣿⣿⣿⣦⢻⣿⣿⡟⣴⣿⣿⣿⣷⣶⣤⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⢹⣿⣿⣿⣿⣿⣿⡇⣿⣿⢸⣿⣿⣿⣿⣿⣿⡏⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⡀⢀⠀⠀⢠⢟⣼⣿⣿⣿⣿⣿⢰⣿⣿⡆⣿⣿⣿⣿⣿⣧⡻⡄⠀⠀⡀⢀⠀⠀",
"⠀⠀⣇⢌⢦⣺⣿⠻⢿⣿⣿⡿⠟⢋⢸⣿⣿⡇⡙⠻⢿⣿⣿⡿⠟⣿⣗⡴⡡⣸⠀⠀",
"⠀⠀⠸⡧⢙⣿⣟⠀⣴⣶⠒⠲⣦⠘⠲⣭⣭⠖⠃⣴⠖⠒⣶⣦⠀⣻⣿⡋⢼⡇⠀⠀",
"⠀⠀⠀⣷⡈⣿⣿⣶⣜⡻⠦⠴⠟⠠⣷⣹⣏⣾⠄⠻⠦⠴⢟⣣⣶⣿⣿⢁⣾⠀⠀⠀",
"⠀⠀⠀⠻⣷⢹⣿⣿⣿⣿⣷⣤⣸⣿⣌⢿⡿⣡⣿⣇⣤⣾⣿⣿⣿⣿⣏⣾⠟⠀⠀⠀",
"⠀⠀⠀⠀⣾⣷⣝⡻⢿⣿⣿⡟⠉⣭⣿⣼⣧⣿⣭⠉⢻⣿⣿⡿⢟⣫⣾⣷⠀⠀⠀⠀",
"⠀⠀⠀⠀⢿⣿⣿⠏⠀⠝⣛⣃⣧⣝⣻⠿⠿⣟⣫⣼⣘⣛⠫⠀⠹⣿⣿⡿⠀⠀⠀⠀",
"⠀⠀⠀⠀⠈⠋⢿⡀⠃⣤⡌⠛⠿⠟⠛⠻⠟⠛⠻⠿⠛⢡⣤⠘⢀⡿⠙⠁⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠈⠻⢠⡿⢁⡀⣶⣶⣤⡤⢤⣤⣶⣶⢀⡈⢿⡄⠟⠁⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠜⢴⡄⠈⠻⢟⣷⡾⢷⣾⡻⠟⠁⢠⡦⠣⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢻⡄⣦⣈⢀⠀⠀⡀⣁⣴⢠⡟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢣⣒⣒⡵⣛⣛⢮⣒⣒⡜⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"❯❯❯  N e o v i m   V." .. version.major .. "." .. version.minor .. "  ❮❮❮",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
}

dashboard.section.buttons.val = {
  dashboard.button('n', ' New file', ':ene'),
  dashboard.button('s', ' Restore session', ':lua require("persistence").load({ last = true})'),
  dashboard.button('r', ' Recent files', ':Telescope oldfiles'),
  dashboard.button('i', ' Notes', ':Neorg index'),
  dashboard.button('c', ' Configuration', ':Oil --float ~/AppData/Local/nvim'),
  dashboard.button('u', ' Update', ':Lazy sync'),
  dashboard.button('q', ' Quit', ':q'),
}

local function footer()
  return {
    "─── "..os.date("%a, %d / %m / %Y").." ───"
  }
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Include"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
alpha.setup(dashboard.opts)
