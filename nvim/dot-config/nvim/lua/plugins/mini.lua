vim.pack.add({ 'https://github.com/nvim-mini/mini.nvim' })

-- mini.ai
require('mini.ai').setup()

-- mini.icons
require('mini.icons').setup()

-- mini.cmdline
require('mini.cmdline').setup()

-- mini.ai
require('mini.surround').setup()

-- mini.starter
local starter = require('mini.starter')

local my_items = {
	starter.sections.builtin_actions(), { name = 'File Brower', action = ':Pick files', section = 'Finders' },
}

starter.setup({
	footer = "",
    header = "",
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

local centered_picker = function()
  local height = math.floor(0.618 * vim.o.lines)
  local width = math.floor(0.618 * vim.o.columns)
  return {
    anchor = 'NW', height = height, width = width,
    row = math.floor(0.5 * (vim.o.lines - height)),
    col = math.floor(0.5 * (vim.o.columns - width)),
  }
end

pick.setup( { window = { config = centered_picker } })

-- custom dotiles picker
dotfile_picker = function()
    pick.builtin.files(nil, {source = { name = 'Dotfiles', cwd = '~/dotfiles', tool = 'rg'}})
end

vim.keymap.set("n", "<leader>sd", dotfile_picker, { desc = '[S]earch [D]otfiles' })
vim.keymap.set("n", "<leader>sh", function() pick.builtin.help() end, { desc = '[S]earch [H]elp' })
vim.keymap.set("n", "<leader>sf", function() pick.builtin.files() end, { desc = '[S]earch [F]ile' }) 
vim.keymap.set("n", "<leader>sr", function() pick.builtin.resume() end, { desc = '[S]earch [R]esume' })
vim.keymap.set("n", "<leader><space>", function() pick.builtin.buffers() end, { desc = '[S]earch Buffer' })

-- mini.extra pickers
local extra = require('mini.extra')
extra.setup()

vim.keymap.set("n", "<leader>sk", function() extra.pickers.keymaps() end, { desc = '[S]earch [K]eymap' })
vim.keymap.set("n", "<leader>ss", function() extra.pickers.spellsuggest() end, { desc = '[S]uggest [S]pelling' })



-- mini.clue
local miniclue = require('mini.clue')
miniclue.setup({
  triggers = {
    { mode = { 'n', 'x' }, keys = '<Leader>' },

    { mode = 'n', keys = '[' },
    { mode = 'n', keys = ']' },

    -- `g` key
    { mode = { 'n', 'x' }, keys = 'g' },

    -- Marks
    { mode = { 'n', 'x' }, keys = "'" },
    { mode = { 'n', 'x' }, keys = '`' },

    -- Registers
    { mode = { 'n', 'x' }, keys = '"' },
    { mode = { 'i', 'c' }, keys = '<C-r>' },


    -- Window commands
    { mode = 'n', keys = '<C-w>' },

    -- `z` key
    { mode = { 'n', 'x' }, keys = 'z' },
  },

  clues = {
    -- Enhance this by adding descriptions for <Leader> mapping groups
    miniclue.gen_clues.square_brackets(),
    miniclue.gen_clues.g(),
    miniclue.gen_clues.marks(),
    miniclue.gen_clues.registers(),
    miniclue.gen_clues.windows(),
    miniclue.gen_clues.z(),
  },
  window = { delay = 500, }
})


