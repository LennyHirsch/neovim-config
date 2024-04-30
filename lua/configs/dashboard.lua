local version = vim.version()
local header = {
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

local center = {
  {
    icon = ' ',
    icon_hl = 'Title',
    desc = 'New file',
    desc_hl = 'String',
    key = 'n',
    keymap = '',
    key_hl = 'Number',
    key_format = ' %s',
    action = 'ene'
  },
  {
    icon = ' ',
    icon_hl = 'Title',
    desc = 'Restore session',
    desc_hl = 'String',
    key = 's',
    keymap = '',
    key_hl = 'Number',
    key_format = ' %s',
    action = 'lua require("persistence").load({ last = true})'
  },
  {
    icon = ' ',
    icon_hl = 'Title',
    desc = 'Recent files',
    desc_hl = 'String',
    key = 'r',
    keymap = '',
    key_hl = 'Number',
    key_format = ' %s',
    action = 'Telescope oldfiles'
  },
  {
    icon = ' ',
    icon_hl = 'Title',
    desc = 'Open notes',
    desc_hl = 'String',
    key = 'i',
    keymap = '',
    key_hl = 'Number',
    key_format = ' %s',
    action = 'Neorg index'
  },
  {
    icon = ' ',
    icon_hl = 'Title',
    desc = 'Configuration',
    desc_hl = 'String',
    key = 'c',
    keymap = '',
    key_hl = 'Number',
    key_format = ' %s',
    action = 'Oil --float ~/AppData/Local/nvim'
  },
  {
    icon = ' ',
    icon_hl = 'Title',
    desc = 'Update',
    desc_hl = 'String',
    key = 'u',
    keymap = '',
    key_hl = 'Number',
    key_format = ' %s',
    action = 'Lazy sync'
  },
  {
    icon = ' ',
    icon_hl = 'Title',
    desc = 'Quit',
    desc_hl = 'String',
    key = 'q',
    keymap = '',
    key_hl = 'Number',
    key_format = ' %s',
    action = 'q'
  },
}

require('dashboard').setup({
  theme = 'doom',
  config = {
    header = header,
    center = center,
    footer = function()
      return {
        "─── "..os.date("%a, %d / %m / %Y").." ───"
      }
    end
  },
})

-- more headers

local skull = {
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣤⣴⣶⠾⠿⠿⠿⠻⠿⣶⣦⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⣾⠿⠋⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠛⠿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⡟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⡟⠁⠀⠀⠀⠀⠀⠀⠒⢚⡀⠒⠀⠀⠀⢀⠀⠀⠀⠀⠈⣉⢉⣂⣀⠀⠀⠀⠀⠈⢿⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⠁⠀⡀⢀⣠⣴⣶⣿⣿⣿⣿⣶⡀⠀⠀⡼⠀⠀⢠⣾⣿⣿⣿⣿⣿⣶⣦⡀⠀⡀⠈⣿⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⠃⠀⢀⠇⣸⣿⣿⣿⠿⣿⣿⣿⣿⣷⠀⣀⣿⣤⠀⢺⣿⣿⡿⠿⠿⣿⣿⣿⣿⡀⠠⠀⠘⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⢠⣾⠏⠀⠀⠃⣰⣿⣿⠋⠀⠀⠀⠈⢻⣿⠃⣰⣿⣿⣿⣷⠹⣿⠃⠀⠀⠀⠀⢹⣿⣿⣷⠀⡆⠀⠘⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⣸⣯⠀⠀⡄⠀⢹⣿⣿⠀⠀⠀⢀⡀⠞⠁⣸⣿⣿⣿⣿⣿⡇⠈⠃⣦⠀⠀⠀⢰⣿⣿⡟⠀⠡⠀⠠⣺⣿⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⢻⡗⣣⡜⠀⠀⠀⠛⠭⠗⠠⠐⠈⠀⠀⢴⣿⣿⣿⣿⣿⣿⣿⣷⠀⠀⠀⠑⠢⠻⠏⠉⠀⠀⠀⠳⣄⢲⣿⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⣾⠀⠀⠀⠀⠀⠀⠀⠐⠒⢢⠀⠀⢸⣿⣿⣿⠟⣿⣿⣿⡿⠀⠀⠘⠉⠁⠀⠀⠀⠀⠀⠀⠀⠙⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⣰⡟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢙⣻⠋⠀⠉⠋⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠂⠀⠀⠀⠀⠘⣷⡄⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠸⡰⠆⠀⢀⣐⡩⠒⢆⠀⠀⠀⠀⠀⠀⠇⡀⣀⠄⠀⠔⠄⡠⠄⠀⠀⠀⠀⠀⢀⡠⢺⠷⢤⣤⠀⢀⠇⣿⠁⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠳⣵⠀⡼⠉⠁⣀⣒⣻⠄⠂⡀⡄⡏⠺⠈⣊⣀⣸⣀⣸⡀⢸⠁⠒⡦⡘⠄⣽⢾⣄⡂⠚⠷⠀⣢⣾⠃⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣇⢐⢁⡠⡄⢷⣾⡆⠰⠀⣳⣶⣾⣿⣏⣿⣿⣿⣯⣿⣿⣾⣶⠁⡰⡄⣷⣵⠁⡦⢄⠀⡀⣾⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣄⢸⡀⠀⢸⣿⣇⣠⣿⣿⣿⣿⣿⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣤⣏⣿⣿⠀⠁⣸⠠⣢⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⣷⡲⡧⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⢸⣓⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣷⢰⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⡠⡬⣿⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡿⠀⠄⢙⠉⠹⢿⣿⣿⢿⢿⣿⣿⣿⠿⡿⡿⢿⢿⣿⣿⠻⢉⠙⠁⠁⢸⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡷⠰⠀⠀⠚⢄⠇⣈⢘⣘⠀⢆⢆⠐⣀⢆⢅⣨⡈⢸⠀⣄⠸⠊⠀⠀⠈⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣇⠡⠀⠀⠀⠀⠈⠡⠡⢠⠈⡀⠀⢁⠀⡀⠀⠀⠀⠀⠁⠀⠀⠀⠀⡀⣠⡿⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢷⣌⢄⠀⠀⠘⠀⠁⠈⠀⠀⠀⠸⠀⠀⠀⠀⠀⠷⠀⠀⠀⠀⠈⣼⡟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⣠⡾⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠳⣆⡀⠀⠀⠀⢀⠀⠐⠂⠒⠤⠀⣀⠀⠀⠀⢀⣾⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣶⣤⣄⣠⣀⣤⣤⣤⣤⣤⣤⣤⣴⠾⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
}

local heart = {
"",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠂⠀⠀⠀⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⡀⠀⠀⠀⠀⠀⠀⠀⡀⢹⣦⠀⠀⡴⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⠀⢸⠀⠀⠀⠀⠀⠀⡹⢸⣦⣼⣿⡇⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣠⠏⠀⠀⠀⠀⠀⣠⠆⠀⣿⣿⣿⠃⠰⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣤⣦⢀⠀⠀⢰⣿⣦⣴⣿⠟⢻⣦⣴⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡆⠀⣿⣿⡇⠈⠀⢅⠀⠻⣿⣿⣿⠀⢸⣿⣿⣿⠇⢰⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢵⣾⣿⣿⣧⡄⠀⢀⣧⠀⢹⣿⣿⠀⢸⣿⣿⡟⠐⡼⡆⡆⠀⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢻⣿⣿⣷⣤⣾⣿⣶⡾⣿⣿⠀⢸⣿⣿⣧⣬⣴⣿⣿⠀⠀⡸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢃⣤⣾⣿⣿⣿⣿⣿⡿⣿⣏⣀⣀⠀⢀⣀⣀⣿⣿⣿⣿⡇⠀⢂⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⣻⢿⣿⡿⣿⠧⡈⠻⣿⣿⠂⣸⣿⣿⣿⢿⣿⣿⣧⣀⣸⡇⠀⢀⠇⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠀⠀⢷⣗⡟⡖⢿⣤⢾⢿⣿⡿⠟⠋⠁⠘⣿⣿⣿⣿⣿⠃⢀⠊⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣷⡳⣀⢰⢾⠐⢼⢸⠀⠀⠀⠀⣻⣿⣿⣿⣇⠀⣾⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢘⢧⠰⡁⢞⣼⡾⢟⠗⠐⢖⠦⣴⣿⣿⣿⣿⡿⣻⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⢴⡿⢃⡇⠘⣿⣃⠐⠂⣠⣠⣶⢴⣶⣿⣿⣿⡿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⢾⠝⠉⠀⣬⢻⣟⠋⠀⠈⡠⣿⡓⠖⠂⠂⠋⠞⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠰⣭⡏⡐⠉⠀⢛⣻⡉⡡⠄⠀⠼⡧⡁⠂⣐⣩⢮⠾⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡰⣳⣟⣐⡂⠀⢒⡋⢁⡀⠀⠀⠀⠘⠛⠨⠍⠠⠴⡯⣢⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣛⣺⠂⠀⠐⣻⣥⠀⣀⠀⢀⠀⢀⠀⠘⠀⠁⠀⠀⡛⢛⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣯⡭⠭⠠⢅⣝⠄⢂⠀⠀⠀⠀⠀⠀⠀⢈⠆⠠⣀⠀⠈⠭⣛⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢱⣛⣛⣁⡺⠠⠤⢎⠀⠒⣀⠀⠀⠀⠂⣁⡀⠄⠂⠑⠚⠟⣖⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠰⣛⣚⣇⣀⣔⢒⠤⢄⠀⢂⣀⠠⠐⠉⠀⠀⠀⠀⢀⠀⣽⢗⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠑⣷⠮⠤⡄⠀⢳⣶⡀⠀⠉⣁⠀⠀⠀⠀⠀⠀⢔⢬⡪⢵⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠿⣿⡯⠀⠸⢙⣿⣍⠀⠤⠄⠀⠀⠀⠀⣀⠫⢕⣺⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠑⢖⣒⣺⢸⠗⠟⣒⠉⠀⠒⣊⠁⡤⣲⡨⢝⡞⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠑⢾⣚⣄⡗⢒⡒⠈⠐⣘⠁⠫⢀⣺⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡏⡟⠦⣤⡤⠭⠁⣐⡀⠩⣵⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  ⡇⠀⠈⠙⠛⠛⠒⠛⠚⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
}

local blurred = {
"",
"",
"",
"░▒▓███████▓▒░       ░▒▓████████▓▒░       ░▒▓██████▓▒░       ░▒▓█▓▒░░▒▓█▓▒░      ░▒▓█▓▒░      ░▒▓██████████████▓▒░  ",
"░▒▓█▓▒░░▒▓█▓▒░      ░▒▓█▓▒░             ░▒▓█▓▒░░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░      ░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░ ",
"░▒▓█▓▒░░▒▓█▓▒░      ░▒▓█▓▒░             ░▒▓█▓▒░░▒▓█▓▒░       ░▒▓█▓▒▒▓█▓▒░       ░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░ ",
"░▒▓█▓▒░░▒▓█▓▒░      ░▒▓██████▓▒░        ░▒▓█▓▒░░▒▓█▓▒░       ░▒▓█▓▒▒▓█▓▒░       ░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░ ",
"░▒▓█▓▒░░▒▓█▓▒░      ░▒▓█▓▒░             ░▒▓█▓▒░░▒▓█▓▒░        ░▒▓█▓▓█▓▒░        ░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░ ",
"░▒▓█▓▒░░▒▓█▓▒░      ░▒▓█▓▒░             ░▒▓█▓▒░░▒▓█▓▒░        ░▒▓█▓▓█▓▒░        ░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░ ",
"░▒▓█▓▒░░▒▓█▓▒░      ░▒▓████████▓▒░       ░▒▓██████▓▒░          ░▒▓██▓▒░         ░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░ ",
"",
"",
"                                                                                                                   ",
"",
}
local ahegao = {
"    ",
"        ⢰⣧⣼⣯⠄⣸⣠⣶⣶⣦⣾⠄⠄⠄⠄⡀⠄⢀⣿⣿⠄⠄⠄⢸⡇⠄⠄ ",
"        ⣾⣿⠿⠿⠶⠿⢿⣿⣿⣿⣿⣦⣤⣄⢀⡅⢠⣾⣛⡉⠄⠄⠄⠸⢀⣿⠄ ",
"       ⢀⡋⣡⣴⣶⣶⡀⠄⠄⠙⢿⣿⣿⣿⣿⣿⣴⣿⣿⣿⢃⣤⣄⣀⣥⣿⣿⠄ ",
"       ⢸⣇⠻⣿⣿⣿⣧⣀⢀⣠⡌⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠿⠿⣿⣿⣿⠄ ",
"      ⢀⢸⣿⣷⣤⣤⣤⣬⣙⣛⢿⣿⣿⣿⣿⣿⣿⡿⣿⣿⡍⠄⠄⢀⣤⣄⠉⠋⣰ ",
"      ⣼⣖⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⢇⣿⣿⡷⠶⠶⢿⣿⣿⠇⢀⣤ ",
"     ⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣽⣿⣿⣿⡇⣿⣿⣿⣿⣿⣿⣷⣶⣥⣴⣿⡗ ",
"     ⢀⠈⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟  ",
"     ⢸⣿⣦⣌⣛⣻⣿⣿⣧⠙⠛⠛⡭⠅⠒⠦⠭⣭⡻⣿⣿⣿⣿⣿⣿⣿⣿⡿⠃  ",
"     ⠘⣿⣿⣿⣿⣿⣿⣿⣿⡆⠄⠄⠄⠄⠄⠄⠄⠄⠹⠈⢋⣽⣿⣿⣿⣿⣵⣾⠃  ",
"      ⠘⣿⣿⣿⣿⣿⣿⣿⣿⠄⣴⣿⣶⣄⠄⣴⣶⠄⢀⣾⣿⣿⣿⣿⣿⣿⠃   ",
"       ⠈⠻⣿⣿⣿⣿⣿⣿⡄⢻⣿⣿⣿⠄⣿⣿⡀⣾⣿⣿⣿⣿⣛⠛⠁    ",
"         ⠈⠛⢿⣿⣿⣿⠁⠞⢿⣿⣿⡄⢿⣿⡇⣸⣿⣿⠿⠛⠁      ",
"           ⠉⠻⣿⣿⣾⣦⡙⠻⣷⣾⣿⠃⠿⠋⠁      ",
"    ⢮⣝⡿⣿⣿⡆⣿⡿⠃ ",
"    ",
}
