vim.pack.add({
	"https://github.com/folke/flash.nvim",
})

require("flash").setup()

vim.keymap.set("n", "<leader>j", '<cmd>lua require("flash").jump()<cr>', { desc = "[J]ump to match" })
