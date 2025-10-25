# copilotcli.nvim

GitHub Copilot CLI in Neovim.

## Install

**lazy.nvim**

```lua
{
  "sunnybharne/copilotcli.nvim",
  config = function()
    require('copilotcli').setup()
  end
}
```

## Usage

`:Cocli` - Opens copilot in right split

## Requirements

- `gh copilot` installed
- Neovim 0.8+
