if true then return {} end
-- Above disables the module

return {

  -- add gruvbox
  { "catppuccin/nvim", 
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme "catppuccin"
    end,
    opts = {
      flavour = "mocha",
      background = { -- :h background
        light = "latte",
        dark = "mocha",
      },
      transparent_background = false,
      flavour = "mocha",
    }
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha",
    },
  }
}
