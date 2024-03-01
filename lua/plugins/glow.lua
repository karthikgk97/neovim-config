return {
	"ellisonleao/glow.nvim",
	config = function()
		require("glow").setup({
          width = 300,
          height = 350,
          width_ratio = 0.95,
          height_ratio = 0.95
        })
		vim.keymap.set("n", "<leader>mm", ":Glow<CR>", {})
	end,
}
