vim.pack.add({
	"https://github.com/stevearc/oil.nvim",
})

local oil = require("oil")

oil.setup({
	view_options = { show_hidden = true },
	keymaps = { ["q"] = "actions.close" },
})

vim.keymap.set("n", "<leader>e", function()
	oil.open()
end, { desc = "[E]xplore current directory" })
