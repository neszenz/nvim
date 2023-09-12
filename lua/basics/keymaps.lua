vim.g.mapleader = ' '
vim.keymap.set({'n', 'v', 'i'}, '<ESC>', '<NOP>')

vim.keymap.set('n', '<leader>r', ':bufdo e<CR>', { desc = 'bufdo e' })
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)
vim.keymap.set('n', '<leader>gs', ':Git<CR>_', {})

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Keeping it in center
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzz')
vim.keymap.set('n', 'N', 'Nzz')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

vim.keymap.set({'n','v','i'}, '<M-C-/>', '0', {})
vim.keymap.set({'n','v','i'}, '<M-C-m>', '1', {})
vim.keymap.set({'n','v','i'}, '<M-C-,>', '2', {})
vim.keymap.set({'n','v','i'}, '<M-C-.>', '3', {})
vim.keymap.set({'n','v','i'}, '<M-C-j>', '4', {})
vim.keymap.set({'n','v','i'}, '<M-C-k>', '5', {})
vim.keymap.set({'n','v','i'}, '<M-C-l>', '6', {})
vim.keymap.set({'n','v','i'}, '<M-C-u>', '7', {})
vim.keymap.set({'n','v','i'}, '<M-C-i>', '8', {})
vim.keymap.set({'n','v','i'}, '<M-C-o>', '9', {})
