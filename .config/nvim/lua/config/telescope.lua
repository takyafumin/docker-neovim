-- telescope
require('telescope').setup({
  defaults = {
    layout_strategy = 'vertical',
    layout_config = {
    },
    mappings = {
      i = {
        ['<esc>'] = require('telescope.actions').close,
        ['<C-u>'] = false
      },
    },
    winblend = 20,
  },
})
local telescope_builtin = require('telescope.builtin')

vim.keymap.set('n', ';ff',       telescope_builtin.find_files, {})
vim.keymap.set('n', ';fo',       telescope_builtin.oldfiles, {})
vim.keymap.set('n', ';fg',       telescope_builtin.live_grep, {})
vim.keymap.set('n', ';fb',       telescope_builtin.buffers, {})
vim.keymap.set('n', '<leader>o', telescope_builtin.lsp_document_symbols, {})
vim.keymap.set('n', '<leader>O', telescope_builtin.lsp_workspace_symbols, {})

