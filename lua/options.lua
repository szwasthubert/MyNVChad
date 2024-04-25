require "nvchad.options"

-- Make "e" button leave references selector after ref selection.
vim.api.nvim_create_autocmd("FileType", {
  callback = function()
    local bufnr = vim.fn.bufnr "%"
    vim.keymap.set("n", "e", function()
      vim.api.nvim_command [[execute "normal! \<cr>"]]
      vim.api.nvim_command(bufnr .. "bd")
    end, { buffer = bufnr })
  end,
  pattern = "qf",
})

vim.wo.relativenumber = true
