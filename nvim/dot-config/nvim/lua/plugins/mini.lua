vim.pack.add({ 'https://github.com/nvim-mini/mini.nvim' })

local pick = require('mini.pick')

pick.setup({})

vim.keymap.set("n", "<leader>fh", function() pick.builtin.help() end, { desc = 'Find Help' })
vim.keymap.set("n", "<leader>ff", function() pick.builtin.files() end, { desc = 'Find File' }) 
vim.keymap.set("n", "<leader>fr", function() pick.builtin.resume() end, { desc = 'Find File' })
vim.keymap.set("n", "<leader><space>", function() pick.builtin.buffers() end, { desc = 'Find Buffer' })



