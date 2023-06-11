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

