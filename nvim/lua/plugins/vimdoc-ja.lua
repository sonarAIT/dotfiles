return {
  "vim-jp/vimdoc-ja",
  lazy = true,
  event = "CmdlineEnter",
  config = function()
    vim.opt.helplang = "ja","en"
  end
}
