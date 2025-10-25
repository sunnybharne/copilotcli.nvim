local M = {}
local win_id = nil
local buf_id = nil

function M.toggle_copilot()
  if win_id and vim.api.nvim_win_is_valid(win_id) then
    vim.api.nvim_win_close(win_id, true)
    win_id = nil
  else
    vim.cmd('vsplit | wincmd l')
    vim.cmd('vertical resize 70')

    if not buf_id or not vim.api.nvim_buf_is_valid(buf_id) then
      buf_id = vim.api.nvim_create_buf(false, true)
      vim.api.nvim_win_set_buf(0, buf_id)
      vim.bo[buf_id].filetype = 'terminal'
      vim.fn.termopen('TERM=xterm-256color copilot')
    else
      vim.api.nvim_win_set_buf(0, buf_id)
    end

    vim.wo.winfixwidth = true
    vim.wo.list = false
    vim.wo.conceallevel = 0
    win_id = vim.api.nvim_get_current_win()
  end
end

function M.setup()
  vim.api.nvim_create_user_command('Cocli', M.toggle_copilot, {})
  vim.keymap.set('n', '<leader>aa', M.toggle_copilot, { desc = 'Toggle Copilot CLI' })
end

return M
