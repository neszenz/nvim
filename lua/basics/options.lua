vim.opt.number = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.opt.swapfile = false
vim.opt.undofile = true

vim.opt.signcolumn = 'yes'

vim.opt.mouse = 'n'

vim.opt.breakindent = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.updatetime = 250

vim.opt.timeout = true
vim.opt.timeoutlen = 300

vim.opt.completeopt = 'menuone'

vim.opt.termguicolors = true

-- Highlight on yank
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
    callback = function()
        vim.highlight.on_yank()
    end,
    group = highlight_group,
    pattern = '*',
})

-- Auto-Commands for testing
--vim.cmd[[autocmd BufRead * echo 'BufRead']]
--vim.cmd[[autocmd BufWrite * echo 'BufWrite']]
-- vim.cmd[[autocmd BufNewFile * echo 'BufNewFile']]
-- vim.cmd[[autocmd BufEnter * echo 'BufEnter']]
-- vim.cmd[[autocmd BufLeave * echo 'BufLeave']]
-- vim.cmd[[autocmd BufWinEnter * echo 'BufWinEnter']]
-- vim.cmd[[autocmd BufWinLeave * echo 'BufWinLeave']]
-- vim.cmd[[autocmd FileReadPre * echo 'FileReadPre']]
-- vim.cmd[[autocmd FileReadPost * echo 'FileReadPost']]
-- vim.cmd[[autocmd FileWritePre * echo 'FileWritePre']]
-- vim.cmd[[autocmd FileWritePost * echo 'FileWritePost']]
-- vim.cmd[[autocmd CursorMoved * echo 'CursorMoved']]
-- vim.cmd[[autocmd CursorMovedI * echo 'CursorMovedI']]
-- vim.cmd[[autocmd VimEnter * echo 'VimEnter']]
-- vim.cmd[[autocmd VimLeavePre * echo 'VimLeavePre']]
-- vim.cmd[[autocmd FocusGained * echo 'FocusGained']]
-- vim.cmd[[autocmd FocusLost * echo 'FocusLost']]
-- vim.cmd[[autocmd WinEnter * echo 'WinEnter']]
-- vim.cmd[[autocmd WinLeave * echo 'WinLeave']]
-- vim.cmd[[autocmd CmdlineEnter * echo 'CmdlineEnter']]
-- vim.cmd[[autocmd CmdlineLeave * echo 'CmdlineLeave']]
-- vim.cmd[[autocmd InsertEnter * echo 'InsertEnter']]
-- vim.cmd[[autocmd InsertLeave * echo 'InsertLeave']]
