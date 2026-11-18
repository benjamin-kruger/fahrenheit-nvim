# Fahrenheit.nvim

A Neovim colorscheme ported from the [iTerm2 Fahrenheit theme](https://github.com/mbadolato/iTerm2-Color-Schemes/blob/master/windowsterminal/Fahrenheit.json).

# Installation

## lazy.nvim:

```lua
return {
  "benjamin-kruger/fahrenheit.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("fahrenheit")
  end,
}
```

## vim.pack:
```lua
vim.pack.add({"https://github.com/benjamin-kruger/fahrenheit-nvim"})
vim.cmd.colorscheme("fahrenheit")
```

# Requirements

Neovim with termguicolors enabled: `vim.o.termguicolors = true`
