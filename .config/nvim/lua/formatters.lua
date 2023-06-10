-- Utilities for creating configurations
local util = require "formatter.util"

-- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
require("formatter").setup {
  filetype = {
    eruby = {
      function()
        return {
          exe = "htmlbeautifier",
          stdin = true,
        }
      end
    },
  }
}

-- Automatically run :FormatWrite whenever you save a file
vim.api.nvim_create_augroup("FormatAutogroup", { clear = true })
vim.api.nvim_create_autocmd("BufWritePost", {
  group = "FormatAutogroup",
  pattern = "*",
  command = "FormatWrite",
})

