return {
  {
    "tpope/vim-fugitive",
    config = function()
      vim.keymap.set("n", "<leader>pgd", ":Gdiff :0<CR>", {})
    end
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()
      vim.keymap.set("n", "<leader>pg", ":Gitsigns preview_hunk<CR>", {})
    end,
  },
}
