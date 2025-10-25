local M = {}
local win_id = nil

function M.toggle_copilot()
  if win_id and vim.api.nvim_win_is_valid(win_id) then
    vim.api.nvim_win_close(win_id, true)
    win_id = nil
  else
    vim.cmd('vsplit | wincmd l')
    vim.cmd('vertical resize 50')
    local buf = vim.api.nvim_create_buf(false, true)
    vim.api.nvim_win_set_buf(0, buf)
    vim.fn.termopen('copilot')
    vim.wo.winfixwidth = true
    win_id = vim.api.nvim_get_current_win()
  end
end

function M.setup()
  vim.api.nvim_create_user_command('Cocli', M.toggle_copilot, {})
  vim.keymap.set('n', '<leader>aa', M.toggle_copilot, { desc = 'Toggle Copilot CLI' })
end

return M
