# copilotcli.nvim

Neovim plugin starter.

## Setup

```lua
-- lua/copilotcli/init.lua
local M = {}

function M.setup()
  print("Hello World")
end

return M
```

## Usage

```lua
-- In your init.lua
require('copilotcli').setup()
```

## Learn

1. Create `lua/copilotcli/init.lua`
2. Call `setup()` function
3. Neovim loads from `lua/` directory
