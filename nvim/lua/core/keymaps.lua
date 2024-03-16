-- scroll keyconfig
vim.api.nvim_set_keymap("n", "<C-j>", "<C-d>", {})
vim.api.nvim_set_keymap("n", "<C-k>", "<C-u>", {})

-- window keyconfig
vim.api.nvim_set_keymap("n", "<leader>l", "<C-w>w", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>h", "<C-w>W", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>j", "<C-w>j", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>k", "<C-w>k", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>s", "<C-w>s", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>v", "<C-w>v", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>w", "<C-w>c", { noremap = true })

-- buffer keyconfig
vim.api.nvim_set_keymap("n", "<leader>n", "<CMD>ene<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>d", "<CMD>bdelete<CR>", {})
vim.api.nvim_set_keymap("n", "<leader><leader>d", "<CMD>bdelete!<CR>", {})

-- comment out keyconfig
vim.api.nvim_set_keymap("n", "<leader>/", "gcc", {})
vim.api.nvim_set_keymap("v", "<leader>/", "gc", {})

-- format keyconfig
vim.api.nvim_set_keymap("n", "<leader><leader>f", "gg=G", { noremap = true })
