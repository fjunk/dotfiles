vim.pack.add({ 'https://github.com/nvim-mini/mini.nvim' })

-- mini.cmdline
require('mini.cmdline').setup({})

-- mini.starter
local starter = require('mini.starter')

local my_items = {
	starter.sections.builtin_actions(), { name = 'File Brower', action = ':Pick files', section = 'Finders' },
}

starter.setup({
	footer = "",
	items = my_items,
	evaluate_single = true,

	-- Array  of functions to be applied consecutively to initial content.
	-- Each function should take and return content for 'Starter' buffer (see
	-- |mini.starter| for more details).
	content_hooks = {
		starter.gen_hook.adding_bullet(),
		starter.gen_hook.aligning('center', 'center'),
		starter.gen_hook.indexing('all', { 'Builtin actions', 'Finders' }),
	},
})

-- mini.pick
local pick = require('mini.pick')

pick.setup({})

vim.keymap.set("n", "<leader>fh", function() pick.builtin.help() end, { desc = 'Find Help' })
vim.keymap.set("n", "<leader>ff", function() pick.builtin.files() end, { desc = 'Find File' }) 
vim.keymap.set("n", "<leader>fr", function() pick.builtin.resume() end, { desc = 'Find File' })
vim.keymap.set("n", "<leader><space>", function() pick.builtin.buffers() end, { desc = 'Find Buffer' })


