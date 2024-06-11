-- https://f1sty.github.io/neovim/nvim/lsp/language-server/config/dotfiles/completion/2023/09/10/simple-nvim-lsp-setup.html
vim.lsp.start({
  name = 'tsserver',
  cmd = {'tsserver'},
  root_dir = vim.fs.dirname(vim.fs.find({ 'package.json' }, { upward = true })[1]),
})
