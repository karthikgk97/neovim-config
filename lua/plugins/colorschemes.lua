return {
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()
      local catpuccinConfig = require("catppuccin")
      catpuccinConfig.setup({
        color_overrides = {
          mocha = {
            base = "#000000",
            mantle = "#000000",
            crust = "#000000",
          },
        },
      })
      vim.cmd.colorscheme("catppuccin")
    end,
  },
  {
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
    priority = 1000,
    config = function()
      local kanagawaConfig = require("kanagawa")
      -- sample comment
      kanagawaConfig.setup({
        commentStyle = { italic = true },
        functionStyle = { italic = false },
      })
      -- vim.cmd.colorscheme "kanagawa-dragon"
    end,
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      -- vim.cmd.colorscheme "tokyonight-night"
    end,
  },
  {
    "ellisonleao/gruvbox.nvim",
    config = function()
      -- vim.cmd.colorscheme "gruvbox"
    end,
  },
}
