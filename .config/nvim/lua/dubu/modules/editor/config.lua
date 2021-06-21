local M = {}

function M.nvim_lspfuzzy()
    require('lspfuzzy').setup({
        methods = 'all';
        fzf_preview = {
            'down:+{2}-/2'
        },
        fzf_modifier = ':~:.',
        fzf_trim = true
    })

    vim.api.nvim_set_keymap('n', '<leader>f', ':Files<CR>', {noremap=true,silent=true})
end

function M.gruvbox()
    vim.o.background = 'dark'
    vim.g.gruvbox_plugin_hi_groups = 1
    vim.g.gruvbox_material_background = 'soft'
    vim.g.gruvbox_material_enable_italic = 1
    vim.g.gruvbox_material_enable_bold = 1

    vim.cmd('colorscheme gruvbox-material')
end

return M
