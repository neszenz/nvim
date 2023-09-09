return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local builtin = require('telescope.builtin')

        vim.keymap.set('n', '<leader><space>', builtin.buffers, { desc = 'Telescope buffers' })
        vim.keymap.set('n', '<leader>?', builtin.oldfiles, { desc = 'Telescope oldfiles' })

        vim.keymap.set('n', '<leader>gf', builtin.git_files, { desc = 'Telescope git_files' })
        vim.keymap.set('n', '<leader>gc', builtin.git_commits, { desc = 'Telescope git_commits' })

        vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = 'Telescope find_files' })
        vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = 'Telescope help_tags' })
        vim.keymap.set('n', '<leader>sw', function() builtin.grep_string({ search = vim.fn.input('Filter: ') }); end, { desc = 'Telescope grep_string (filtered)' })
        vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = 'Telescope live_grep' })
        vim.keymap.set('n', '<leader>sd', builtin.diagnostics, { desc = 'Telescope diagnostics' })
        vim.keymap.set('n', '<leader>sr', builtin.resume, { desc = 'Telescope resume' })

        vim.keymap.set('n', '<leader>/', function()
            builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
                winblend = 10,
                previewer = false,
            })
        end, { desc = 'Telescope current_buffer_fuzzy_find' })

        -- Enable telescope fzf native if installed
        pcall(require('telescope').load_extension, 'fzf')

        -- Fix error ('E490: No fold found') on opening new files via telescope
        vim.api.nvim_create_autocmd( { 'BufEnter' }, {
                pattern = { '*' },
                command = 'normal zx'
        })
    end
}
