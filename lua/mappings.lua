require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>db", "<cmd> DapToggleBreakpoint <CR>")
map("n", "<leader>dpr", function()
  require("dap-python").test_method()
end)

-- Dap
map("n", "<leader>db", "<cmd> DapToggleBreakpoint <CR>", { desc = "Dap Add breakpoint at line" })

map("n", "<F8>", function()
  require("dap").continue()
end, { desc = "Dap Continue" })
map("n", "<F9>", function()
  require("dap").step_over()
end, { desc = "Dap Step over" })
map("n", "<F4>", function()
  require("dap").step_into()
end, { desc = "Dap Step into" })
map("n", "<F7>", function()
  require("dap").step_out()
end, { desc = "Dap Step out" })

-- Dap-UI
map("n", "<leader>duo", function()
  require("dapui").open()
end, { desc = "Dap Open UI" })
map("n", "<leader>duc", function()
  require("dapui").close()
end, { desc = "Dap Open UI" })

-- Dap Python
map("n", "<leader>dpr", function()
  require("dap-python").test_method()
end, { desc = "Dap-Python Run and debug closes test method above the cursor" })
map("n", "<leader>dpc", function()
  require("dap-python").test_class()
end, { desc = "Dap-Python Run and debug closes test class above the cursor" })

-- Tmux navigate
map("n", "<C-h>", "<cmd> TmuxNavigateLeft <CR>")
map("n", "<C-j>", "<cmd> TmuxNavigateDown <CR>")
map("n", "<C-k>", "<cmd> TmuxNavigateUp <CR>")
map("n", "<C-l>", "<cmd> TmuxNavigateRight <CR>")

-- Trouble
-- Lua
map("n", "<leader>tx", function()
  require("trouble").toggle()
end, { desc = "General Trouble" })
map("n", "<leader>tw", function()
  require("trouble").toggle "workspace_diagnostics"
end, { desc = "Trouble Workspace Diagnostics" })
map("n", "<leader>td", function()
  require("trouble").toggle "document_diagnostics"
end, { desc = "Trouble Document Diagnostics" })
map("n", "<leader>tq", function()
  require("trouble").toggle "quickfix"
end, { desc = "Trouble Quickfixes" })
map("n", "<leader>tl", function()
  require("trouble").toggle "loclist"
end, { desc = "Trouble Loclist" })
map("n", "gR", function()
  require("trouble").toggle "lsp_references"
end, { desc = "Trouble LSP References" })
