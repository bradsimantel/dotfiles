local lint = require('lint')
local parser = require('lint.parser')
local efm = '%f:%l:%c: %m'

lint.linters.erblint = {
  cmd = 'bundle',
  args = { 'exec', 'erblint', '--format', 'compact' },
  stream = 'stdout',
  ignore_exitcode = true,
  parser = parser.from_errorformat(efm, {
    source = 'erblint',
    severity = vim.diagnostic.severity.WARN
  })
}

lint.linters_by_ft = {
  eruby = { 'erblint' }
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    lint.try_lint()
  end,
})
