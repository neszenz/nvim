return {
    {
        'tjdevries/express_line.nvim',
        depedencies = 'nvim-lua/plenary.nvim',
        config = function()
            require('el').setup()
        end
    }
}
