-- ─── Appearance ──────────────────────────────────────────────────────
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.showmode = false
vim.opt.cursorline = true
vim.opt.signcolumn = "yes"
vim.g.have_nerd_font = true

-- ─── Editing ────────────────────────────────────────────────────────
vim.opt.breakindent = true
vim.opt.confirm = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.wrap = false

-- ─── Files ──────────────────────────────────────────────────────────
vim.opt.swapfile = false
vim.opt.undofile = true

-- ─── Search ─────────────────────────────────────────────────────────
vim.opt.ignorecase = true
vim.opt.inccommand = "split"
vim.opt.smartcase = true

-- ─── Splits ─────────────────────────────────────────────────────────
vim.opt.splitbelow = true
vim.opt.splitright = true

-- ─── UI / Input ─────────────────────────────────────────────────────
vim.opt.list = true
vim.opt.mouse = "a"
vim.opt.scrolloff = 10
vim.opt.timeoutlen = 300
vim.opt.updatetime = 250
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
