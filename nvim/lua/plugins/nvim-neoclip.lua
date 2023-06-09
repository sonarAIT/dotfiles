return {
  "AckslD/nvim-neoclip.lua",
  dependencies = {
    "ibhagwan/fzf-lua",
  },
  lazy = true,
  keys = {
    {"<leader>p", "<CMD>lua require('neoclip.fzf')()<CR>", { silent = true }},
  },
  event = { "BufReadPost", "BufAdd", "BufNewFile" },
  config = function()
    require('neoclip').setup()
  end,
}
