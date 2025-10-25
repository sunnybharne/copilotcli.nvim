local M = {}

function M.open_copilot()
  vim.cmd('vsplit | wincmd l')
  vim.cmd('vertical resize 50')
  local buf = vim.api.nvim_create_buf(false, true)
  vim.api.nvim_win_set_buf(0, buf)
  vim.fn.termopen('copilot')
  vim.wo.winfixwidth = true
end

function M.setup()
  vim.api.nvim_create_user_command('Cocli', M.open_copilot, {})
end

return M
