return {
    {
        'navarasu/onedark.nvim',
        config = function()
            local palette = require('onedark.palette').cool
            local hl_overrides ={
                TelescopeResultsBorder = {
                    fg = palette.bg3
                },
                TelescopePromptBorder = {
                    fg = palette.bg3
                },
                TelescopePreviewBorder = {
                    fg = palette.bg3
                }
            }

            require('onedark').setup {
                style = 'cool',
                transparent = true,
                highlights = hl_overrides
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
