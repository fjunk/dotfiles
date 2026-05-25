vim.pack.add({
	'https://github.com/folke/flash.nvim',
})

require('flash').setup({
    modes = {
    -- use flash for default search with backdrop
    search = {
      enabled = true,
      highlight = { backdrop = true },
  }}
})

vim.keymap.set('n', '<leader>j', '<cmd>lua require("flash").jump()<cr>', { desc = '[J]ump to match' })
