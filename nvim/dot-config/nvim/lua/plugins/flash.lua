vim.pack.add({
	'https://github.com/folke/flash.nvim',
})

vim.keymap.set('n', 's', '<cmd>lua require("flash").jump()<cr>', { desc = 'Jump' })
