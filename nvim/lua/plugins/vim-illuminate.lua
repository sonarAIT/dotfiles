return {
	"RRethy/vim-illuminate",
	lazy = true,
	event = { "CursorHold", "CursorHoldI" },
	config = function()
    -- enable background
    local commands_enable_background = [[
		  highlight IlluminatedWordText ctermbg=237 guibg=#3b3e48
		  highlight IlluminatedWordRead ctermbg=237 guibg=#3b3e48
		  highlight IlluminatedWordWrite ctermbg=237 guibg=#3b3e48
    ]]

    vim.api.nvim_create_augroup("Illuminate", {})
    vim.api.nvim_create_autocmd("ColorScheme", {
      pattern = "*",
      group = "Illuminate",
      command = commands_enable_background
    })

    vim.cmd(commands_enable_background)
  end
}
