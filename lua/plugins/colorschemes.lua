return {
    {
        'navarasu/onedark.nvim',
        config = function()
            require('onedark').setup {
                style = 'cool',
                transparent = true
            }
            require('onedark').load()
        end
    },
    {
        'neanias/everforest-nvim',
        config = function ()
            require('everforest').setup {
                background = "hard",
                transparent_background_level = 1,
                ui_contrast = "high",
            }
            -- require('everforest').load()
        end
    },
    {
        'tiagovla/tokyodark.nvim',
        config = function ()
            require("tokyodark").setup {
                transparent_background = true,
                gamma = 1.2,
            }
            -- vim.cmd [[colorscheme tokyodark]]
        end
    },
    {
        'franbach/miramare',
        config = function ()
            vim.cmd [[let g:miramare_transparent_background = 1]]
        end
    },
    {
        'rebelot/kanagawa.nvim',
        config = function ()
            require("kanagawa").setup {
                transparent = true,
            }
            -- vim.cmd[[colorscheme kanagawa]]
        end
    },

    'Mofiqul/vscode.nvim',

    'gibfahn/gib-noir.nvim',
}
