local M = {}

function M.nvim_treesitter()
    require('nvim-treesitter.configs').setup({
        ensure_installed = 'maintained',
        highlight = {
            enable = true
        },
        textobjects = {
            select = {
                enable = true,
                keymaps = {
                    ['af'] = '@function.outer',
                    ['if'] = '@function.inner',
                    ['ac'] = '@class.outer',
                    ['ic'] = '@class.inner'
                }
            }
        }
    })
end

function M.nvim_autopairs()
    require('nvim-autopairs').setup()
end

return M
