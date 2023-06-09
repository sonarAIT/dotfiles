return {
  "nvim-lualine/lualine.nvim",
  lazy = true,
  event = { "BufReadPost", "BufAdd", "BufNewFile" },
  config = function()
    -- keyconfigs
    vim.api.nvim_set_keymap("n", "<leader>1", "<CMD>LualineBuffersJump! 1<CR>", {})
    vim.api.nvim_set_keymap("n", "<leader>2", "<CMD>LualineBuffersJump! 2<CR>", {})
    vim.api.nvim_set_keymap("n", "<leader>3", "<CMD>LualineBuffersJump! 3<CR>", {})
    vim.api.nvim_set_keymap("n", "<leader>4", "<CMD>LualineBuffersJump! 4<CR>", {})
    vim.api.nvim_set_keymap("n", "<leader>5", "<CMD>LualineBuffersJump! 5<CR>", {})
    vim.api.nvim_set_keymap("n", "<leader>6", "<CMD>LualineBuffersJump! 6<CR>", {})
    vim.api.nvim_set_keymap("n", "<leader>7", "<CMD>LualineBuffersJump! 7<CR>", {})
    vim.api.nvim_set_keymap("n", "<leader>8", "<CMD>LualineBuffersJump! 8<CR>", {})
    vim.api.nvim_set_keymap("n", "<leader>9", "<CMD>LualineBuffersJump! 9<CR>", {})

    -- trailing whitespaces
    function trailing_whitespaces()
      local space = vim.fn.search([[\s\+$]], 'nwc')
      return space ~= 0 and "TW:"..space or ""
    end

    -- mixed indent
    function mixed_indent()
      local space_pat = [[\v^ +]]
      local tab_pat = [[\v^\t+]]
      local space_indent = vim.fn.search(space_pat, 'nwc')
      local tab_indent = vim.fn.search(tab_pat, 'nwc')
      local mixed = (space_indent > 0 and tab_indent > 0)
      local mixed_same_line
      if not mixed then
        mixed_same_line = vim.fn.search([[\v^(\t+ | +\t)]], 'nwc')
        mixed = mixed_same_line > 0
      end
      if not mixed then return '' end
      if mixed_same_line ~= nil and mixed_same_line > 0 then
        return 'MI:'..mixed_same_line
      end
      local space_indent_cnt = vim.fn.searchcount({pattern=space_pat, max_count=1e3}).total
      local tab_indent_cnt =  vim.fn.searchcount({pattern=tab_pat, max_count=1e3}).total
      if space_indent_cnt > tab_indent_cnt then
        return 'MI:'..tab_indent
      else
        return 'MI:'..space_indent
      end
    end

    -- detect paste mode
    function detect_paste_mode()
      if vim.go.paste == true then
        return "PASTE"
      else
        return ""
      end
    end

    -- setup
    require('lualine').setup ({
      sections = {
        lualine_a = {'mode', detect_paste_mode},
        lualine_b = {'branch', 'diff', {'diagnostics', symbols = {error = 'E', warn = 'W', info = 'I', hint = 'H'}}},
        lualine_c = {'filename'},
        lualine_x = {mixed_indent, trailing_whitespaces, 'filetype', {'fileformat', symbols = {unix = "LF", dos = "CRLF", mac = "CR"}}, 'encoding'},
        lualine_y = {'progress'},
        lualine_z = {'location'},
      },
      tabline = {
        lualine_a = {{'buffers', mode = 2}},
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {'tabs'}
      },
      extensions = {
        "neo-tree",
      },
    })
  end
}
