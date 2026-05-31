vim.pack.add({
	"https://github.com/OXY2DEV/markview.nvim",
})

require("markview").setup()

vim.api.nvim_set_keymap("n", "<leader>mt", "<CMD>Markview<CR>", { desc = "Toggles `markview` previews globally." })
vim.api.nvim_set_keymap(
	"n",
	"<leader>ms",
	"<CMD>Markview splitToggle<CR>",
	{ desc = "Toggles `splitview` for current buffer." }
)
