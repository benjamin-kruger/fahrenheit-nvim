# Fahrenheit.nvim

A Neovim colorscheme ported from the [iTerm2 Fahrenheit theme](https://github.com/mbadolato/iTerm2-Color-Schemes/blob/master/windowsterminal/Fahrenheit.json).

# Installation

Using lazy.nvim:

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

# Requirements

Neovim with termguicolors enabled: `vim.o.termguicolors = true`

# Contributing

Issues and PRs welcome on GitHub.
