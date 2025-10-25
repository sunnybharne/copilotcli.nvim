local M = {}

function M.hello()
  vim.cmd('vsplit | wincmd l')
  vim.cmd('vertical resize 30')
  vim.cmd('terminal')
  vim.wo.winfixwidth = true
end

function M.setup()
  vim.api.nvim_create_user_command('Hello', M.hello, {})
end

return M
