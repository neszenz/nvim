return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader><leader>', builtin.find_files, {desc = 'Telescope find_files'})
        vim.keymap.set('n', '<leader>fb', builtin.buffers, {desc = 'Telescope buffers'})
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, {desc = 'Telescope help_tags'})
        vim.keymap.set('n', '<C-p>', builtin.git_files, {desc = 'Telescope git_files'})
        vim.keymap.set('n', '<leader>ps', function() builtin.grep_string({ search = vim.fn.input("Filter: ") }); end, {desc = 'Telescope filtered grep_string'})
        vim.keymap.set('n', '<leader>pg', builtin.live_grep, {desc = 'Telescope live_grep'})
        vim.keymap.set('n', '<leader>pc', builtin.git_commits, {desc = 'Telescope git_commits'})

        -- Enable telescope fzf native if installed
        pcall(require('telescope').load_extension, 'fzf')
    end
}
