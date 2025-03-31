require("toggleterm").setup({
  -- Default terminal configuration (horizontal)
  size = 25,
  direction = 'horizontal',
  open_mapping = false, -- Disable default mapping
  shade_terminals = true,
  shading_factor = '1',
  start_in_insert = true,
  persist_size = true,

  -- Add vertical terminal configuration
  terminals = {
    vertical = {
      cmd = vim.o.shell,
      direction = 'vertical',
      size = function()
        return math.floor(vim.o.columns * 0.5)
      end,
      hidden = true,
      persist_mode = true,
    }
  }
})

-- Create terminal instances
local Terminal = require('toggleterm.terminal').Terminal

-- Horizontal terminal (original configuration)
local horizontal_term = Terminal:new({
  direction = 'horizontal',
  size = 25,
})

-- Vertical center split terminal
local vertical_term = Terminal:new({
  direction = 'vertical',
  size = function() 
    return math.floor(vim.o.columns * 0.5)
  end,
  on_open = function(term)
    vim.cmd("wincmd L")  -- Force split to right half
  end,
})

-- Key mappings
vim.keymap.set({'n', 't'}, '<A-1>', function() horizontal_term:toggle() end)
vim.keymap.set({'n', 't'}, '<A-2>', function() vertical_term:toggle() end)


