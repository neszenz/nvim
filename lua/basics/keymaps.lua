vim.g.mapleader = ' '

vim.keymap.set('n', '<leader>r', ':bufdo e<CR>', { desc = 'bufdo e' })
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)
vim.keymap.set('n', '<leader>gs', ':Git<CR>_', {})
vim.keymap.set('n', '<leader>gd', ':Git diff<CR>_', {})
vim.keymap.set('n', '<leader>gD', ':Git diff --staged<CR>_', {})

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

-- Read the the line specified by offset from file and execute it as command
local function exec_vaction(action_offset)
    local cmd_file_path = '.vactions'

    local file = io.open(cmd_file_path, 'r')

    if file then
        local line_counter = 1
        while line_counter <= action_offset do
            local line = file:read()

            if line == nil then
                print("Error: .vactions out-of-bounds for action #"..action_offset)
                return
            end

            if line_counter == action_offset then
                print("Execute vaction #"..action_offset..": '"..line.."'")
                io.popen(line)
            end

            line_counter = line_counter + 1
        end
    else
        print("Error: .vactions not found")
    end
end

vim.keymap.set({'n','v','i'}, '<F1>', function() exec_vaction(1) end)
vim.keymap.set({'n','v','i'}, '<F2>', function() exec_vaction(2) end)
vim.keymap.set({'n','v','i'}, '<F3>', function() exec_vaction(3) end)
vim.keymap.set({'n','v','i'}, '<F4>', function() exec_vaction(4) end)
vim.keymap.set({'n','v','i'}, '<F5>', function() exec_vaction(5) end)
vim.keymap.set({'n','v','i'}, '<F6>', function() exec_vaction(6) end)
vim.keymap.set({'n','v','i'}, '<F7>', function() exec_vaction(7) end)
vim.keymap.set({'n','v','i'}, '<F8>', function() exec_vaction(8) end)
vim.keymap.set({'n','v','i'}, '<F9>', function() exec_vaction(9) end)
vim.keymap.set({'n','v','i'}, '<F10>', function() exec_vaction(10) end)
vim.keymap.set({'n','v','i'}, '<F11>', function() exec_vaction(11) end)
vim.keymap.set({'n','v','i'}, '<F12>', function() exec_vaction(12) end)
