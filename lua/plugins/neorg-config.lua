local neorg_config = {
  {
    'nvim-neorg/neorg',
    dependencies = { 'luarocks.nvim' },
    config = function()
      require('neorg').setup({
        load = {
          ['core.defaults'] = {},
          ['core.concealer'] = {
            config = {
              icons = {
                todo = {
                  done = {
                    icon = ""
                  },
                  on_hold = {
                    icon = ""
                  },
                  recurring = {
                    icon = "󱍷"
                  },
                  uncertain = {
                    icon = ""
                  },
                  undone = {
                    icon = ""
                  },
                  urgent = {
                    icon = ""
                  },
                },
              },
            },
          },
          ['core.summary'] = {},
          ['core.syntax'] = {},
          ['core.keybinds'] = {
            config = {
              default_keybinds = true,
              neorg_leader = '<Leader><Leader>',
            }
          },
          ['core.journal'] = {
            config = {
              strategy = 'flat',
              workspace = 'notes',
            },
          },
          ['core.completion'] = {
            config = {
              engine = 'nvim-cmp'
            }
          },
          ['core.dirman'] = {
            config = {
              workspaces = {
                notes = 'C:/Users/Lenny/notes',
                phd = 'C:/Users/Lenny/notes/phd',
              },
              default_workspace = 'notes',
            },
          },
        },
      })
      vim.wo.conceallevel = 2
    end,
    cmd = 'Neorg',
  },
}

return neorg_config
