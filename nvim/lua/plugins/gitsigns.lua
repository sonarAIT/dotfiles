return {
  "lewis6991/gitsigns.nvim",
  lazy = true,
  event = { "CursorHold", "CursorHoldI" },
  config = function()
    require('gitsigns').setup()
  end
}
