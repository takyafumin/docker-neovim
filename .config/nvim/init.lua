-- plugins
require "plugins"


-- basic
vim.wo.relativenumber = true
vim.wo.cursorline = true
vim.opt.termguicolors = true
vim.opt.wildoptions = "pum"
vim.opt.clipboard = "unnamedplus"
vim.g.clipboard = {
    name = "win32yank-wsl",
    copy = {
	["+"] = "/home/takyafumin/.bin/win32yank.exe -i --crlf",
	["*"] = "/home/takyafumin/.bin/win32yank.exe -i --crlf",
    },
    paste = {
	["+"] = "/home/takyafumin/.bin/win32yank.exe -o --lf",
	["*"] = "/home/takyafumin/.bin/win32yank.exe -o --lf",
    },
    cache_enabled = 0
}
vim.opt.laststatus = 3


-- keymaps
vim.g.mapleader = " "
vim.keymap.set('n', '<Esc><Esc>', ':<C-u>noh<CR>')
vim.keymap.set('n', '<leader>w', ':<C-u>w')
vim.keymap.set('n', '<leader>q', ':<C-u>q')
vim.keymap.set('i', 'jj', '<ESC>')
vim.keymap.set('t', '<ESC>', '<C-\\><C-n>')
vim.keymap.set('n', ';t', '<cmd>ToggleTerm<cr>', { noremap = true, silent = true })
vim.keymap.set('n', ';w', ':<C-u>w')
vim.keymap.set('n', ';q', ':<C-u>q')
vim.keymap.set('n', ';dd', ':<C-u>bd')

-- config
require "config/cmp"
require "config/colorscheme"
require "config/lsp"
require "config/lualine"
require "config/noice"
require "config/telescope"
require "config/treesitter"
require "config/fuzzy-motion"
require "config/indent-blankline"
require "config/vim-translator"
require "config/surround"




vim.cmd [[
	set updatetime=400
	autocmd QuickFixCmdPost *grep* cwindow
	]]

