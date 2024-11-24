local nbtFiles = {"*.dat", "*.nbt", "*.dat_old"}

vim.api.nvim_create_autocmd("BufReadPost", {
   pattern =  nbtFiles,
   callback = function()
      vim.cmd("set filetype=json")
      vim.cmd("silent %!nbt -r % --pretty --json")
  end,
})

vim.api.nvim_create_autocmd("BufWritePost", {
   pattern = nbtFiles,
   callback = function()
      vim.cmd("silent !nbt -r % -w %")
      vim.cmd("edit %")
   end
})
