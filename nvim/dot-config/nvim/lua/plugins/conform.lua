vim.pack.add({ 'https://github.com/stevearc/conform.nvim' })

require('conform').setup({
	formatters_by_ft = {
		lua = { 'stylua' },
		kotlin = { 'ktlint' },
	},
	format_on_save = {
		timeout_ms = 3000,
		lsp_format = 'fallback',
	},
})

vim.keymap.set({ 'n', 'v' }, '<leader>f', function()
	require('conform').format({
		timeout_ms = 3000,
		lsp_format = 'fallback',
	})
end, { desc = '[F]ormat buffer' })
