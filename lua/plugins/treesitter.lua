return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
        require('nvim-treesitter.configs').setup {
            ensure_installed = {'lua', 'vim', 'vimdoc'},
            sync_install = false,
            auto_install = true,
            highlight = {
                enable = true
            },
            indent = {
                enable = true
            },
        }

        -- Folding w/ treesitter
        vim.opt.foldmethod = 'expr'
        vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
        vim.opt.foldnestmax = 20
        vim.opt.foldlevelstart = 20
    end
}
