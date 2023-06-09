local plugins_dir = vim.fn.stdpath("config") .. "/lua/plugins"

Lazy = {}

function Lazy:get_plugins()
  plugins = {}
  for _, f in ipairs(vim.split(vim.fn.glob(plugins_dir .. "/*.lua"), "\n")) do
    local plugin = require(f:sub(#plugins_dir - 7, -5))
    if type(plugin) == "table" then
      plugins[#plugins + 1] = plugin
    end
  end

  return plugins
end

function Lazy:get_option()
  opt = {}
  return opt
end

function Lazy:load_lazy()
  -- bootstrap lazy.nvim
  local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
  if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
      "git",
      "clone",
      "--filter=blob:none",
      "https://github.com/folke/lazy.nvim.git",
      "--branch=stable", -- latest stable release
      lazypath,
    })
  end
  vim.opt.rtp:prepend(lazypath)

  -- setup plugins
  require("lazy").setup(self.get_plugins(), self.get_option())
end

Lazy:load_lazy()
