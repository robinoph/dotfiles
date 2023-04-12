vim.api.nvim_create_autocmd("BufEnter", {
      pattern = { "*.groovy", "Jenkinsfile" },
      command = "set shiftwidth=4 smarttab",
})

vim.api.nvim_create_autocmd("BufEnter", {
      pattern = { "Jenkinsfile" },
      command = "set syntax=groovy",
})
