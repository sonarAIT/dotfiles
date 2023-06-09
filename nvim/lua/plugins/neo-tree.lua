return {
  "nvim-neo-tree/neo-tree.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    -- "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  lazy = true,
  keys = {
    {"<leader>t", "<CMD>Neotree toggle<CR>", { silent = true }},
  },
  config = function()
    -- disable nerd icon
    require("neo-tree").setup({
      default_component_configs = {
        indent = {
          expander_collapsed = ">",
          expander_expanded = "▽",
        },
        icon = {
          folder_closed = "+", 
          folder_open = "-",
          folder_empty = "-",
        },
        git_status = {
          symbols = {
            deleted = " X ",
            renamed = " → ",
            untracked = " ? ",
            ignored = "[/]",
            unstaged = "[ ]",
            staged = "[x]",
            conflict = "[c]",
          },
        },
      },
    })

    -- disable background
    local commands_disable_background = [[
      highlight NeoTreeNormal ctermbg=NONE guibg=NONE
      highlight NeoTreeEndOfBuffer ctermbg=NONE guibg=NONE ctermfg=NONE guifg=NONE
    ]]

    vim.api.nvim_create_augroup("NeoTree", {})
    vim.api.nvim_create_autocmd("ColorScheme", {
      pattern = "*",
      group = "NeoTree",
      command = commands_disable_background
    })

    vim.cmd(commands_disable_background)
  end
}
