local M = {}

function M.hello()
  vim.cmd('vsplit | wincmd l')
  vim.cmd('vertical resize 30')
  local buf = vim.api.nvim_create_buf(false, true)
  vim.api.nvim_win_set_buf(0, buf)
  vim.api.nvim_buf_set_lines(buf, 0, -1, false, { "Hello World" })
  vim.wo.winfixwidth = true
end

function M.setup()
  vim.api.nvim_create_user_command('Hello', M.hello, {})
end

return M
