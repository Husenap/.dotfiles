require 'dubu.core'

require 'dubu.load_plugins'
require 'dubu.options'

-- colorscheme
require('colorizer').setup()

-- lsp
require 'dubu.compe_completion'

vim.g.mapleader = ' '
vim.g.auto_save = 0

vim.cmd('syntax on')

local base16 = require 'base16'
base16(base16.themes['onedark'], true)

require 'dubu.highlights'

vim.g.indentline_enabled = 1
vim.g.indent_blankline_char = '▏'

vim.g.indent_blankline_filetype_exclude = {'help', 'terminal', 'dashboard'}
vim.g.indent_blankline_buftype_exclude = {'terminal'}

vim.g.indent_blankline_show_trailing_blankline_indent = false
vim.g.indent_blankline_show_first_indent_level = false

require 'dubu.telescope_nvim'
require 'dubu.nvim_tree'

-- git signs, lsp symbols
require('nvim-autopairs').setup()
require('lspkind').init()

vim.api.nvim_exec('au BufEnter term://* setlocal nonumber', false)
