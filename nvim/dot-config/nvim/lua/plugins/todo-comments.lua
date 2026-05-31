vim.pack.add({
	"https://github.com/folke/todo-comments.nvim",
})

require("todo-comments").setup({
	keywords = {
		FIX = { alt = { "fix", "FIXME", "fixme", "BUG", "bug" } },
		TODO = { alt = { "todo" } },
		HACK = { alt = { "hack" } },
		WARN = { alt = { "warn", "WARNING", "warning" } },
		PERF = { alt = { "perf", "PERFORMANCE", "performance" } },
		NOTE = { alt = { "note", "INFO", "info" } },
		TEST = { alt = { "test", "TESTING", "testing" } },
	},
})
