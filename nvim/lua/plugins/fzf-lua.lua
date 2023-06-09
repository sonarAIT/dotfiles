return {
  "ibhagwan/fzf-lua",
  dependencies = {
    -- "nvim-tree/nvim-web-devicons",
  },
  lazy = true,
  keys = {
    {"<leader>e", "<CMD>FzfLua files<CR>", { silent = true }},
  },
}
