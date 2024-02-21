return {
    {
        'tjdevries/express_line.nvim',
        dependencies = 'nvim-lua/plenary.nvim',
        opts = function()
            require('el').setup()
        end
    }
}
