vim.api.nvim_create_autocmd("BufRead", {
  pattern = { "*.*" },
  callback = function(data)
    require("local-highlight").attach(data.buf)
  end,
})
