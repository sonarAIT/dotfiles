return {
  "phaazon/hop.nvim",
  lazy = true,
  branch = "v2",
  event = "BufReadPost",
  config = function()
    require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })

    -- keyconfigs
    vim.api.nvim_set_keymap("n", "<leader>f", "<CMD>HopWord<CR>", {})
    vim.api.nvim_set_keymap("n", "<leader>g", "<CMD>HopLine<CR>", {})
  end
}
