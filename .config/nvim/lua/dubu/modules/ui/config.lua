local global = require 'dubu.core.global'

local M = {}

function M.galaxyline()
    require('dubu.modules.ui.dubuline')
end

function M.indent_blankline()
    vim.g.indent_blankline_char = '▏'
    vim.g.indent_blankline_show_trailing_blankline_indent = false
    vim.g.indent_blankline_show_first_indent_level = true
    vim.g.indent_blankline_filetype_exclude = {'help', 'terminal', 'dashboard', ''}
    vim.g.indent_blankline_buftype_exclude = {'terminal', 'nofile'}
    vim.g.indent_blankline_show_current_context = true

    vim.g.indent_blankline_context_patterns = {
        "class",
        "function",
        "method",
        "block",
        "list_literal",
        "selector",
        "^if",
        "^table",
        "if_statement",
        "while",
        "for"
    }

    vim.cmd('autocmd CursorMoved * IndentBlanklineRefresh')
end

function M.nvim_bufferline()
    require('bufferline').setup({
        options = {
            offsets = {{filetype = "NvimTree", text = "", padding = 1}},
            buffer_close_icon = "",
            modified_icon = "",
            close_icon = "",
            left_trunc_marker = "",
            right_trunc_marker = "",
            max_name_length = 14,
            max_prefix_length = 13,
            tab_size = 20,
            show_tab_indicators = true,
            enforce_regular_tabs = false,
            view = "multiwindow",
            show_buffer_close_icons = true,
            separator_style = "thin",
            mappings = "true"
        }
    })
    local opt = {silent = true}
    local map = vim.api.nvim_set_keymap
    map("n", "<S-t>", [[<Cmd>tabnew<CR>]], opt) -- new tab
    map("n", "<S-x>", [[<Cmd>bdelete<CR>]], opt) -- close tab
    map("n", "<TAB>", [[<Cmd>BufferLineCycleNext<CR>]], opt)
    map("n", "<S-TAB>", [[<Cmd>BufferLineCyclePrev<CR>]], opt)
end

function M.nvim_tree()
    require('dubu.modules.ui.nvim_tree')
end

function M.gitsigns()
    require('gitsigns').setup({
        signs = {
            add =           {hl = 'DiffAdd', text = '▌', numhl = 'GitSignsAddNr'},
            change =        {hl = 'DiffChange', text = '▌', numhl = 'GitSignsChangeNr'},
            delete =        {hl = 'DiffDelete', text = '_', numhl = 'GitSignsDeleteNr'},
            topdelete =     {hl = 'DiffDelete', text = '‾', numhl = 'GitSignsDeleteNr'},
            changedelete =  {hl = 'DiffChange', text = '~', numhl = 'GitSignsChangeNr'},
        },
        numhl = false,
        keymaps = {
            noremap = true,
            buffer = true
        },
        watch_index = {
            interval = 100
        },
        sign_priority = 5,
        status_formatter = nil
    })
end

return M
