vim.pack.add({
	'https://github.com/folke/snacks.nvim',
})

require('snacks').setup({
	picker = {},
})

vim.keymap.set('n', '<leader>ff', function() Snacks.picker.files() end)
vim.keymap.set('n', '<leader>fg', function() Snacks.picker.grep() end)
vim.keymap.set('n', '<leader>fb', function() Snacks.picker.buffers() end)
