-- background transparent
vim.api.nvim_create_augroup("Core", {})
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  group = "Core",
  command = [[
    highlight Normal ctermbg=NONE guibg=NONE
    highlight NormalNC ctermbg=NONE guibg=NONE
    highlight EndOfBuffer ctermbg=NONE guibg=NONE
    highlight CursorLine ctermbg=NONE guibg=NONE
  ]]
})

-- colorscheme
vim.cmd "colorscheme sonokai"
vim.g.background = "dark"
