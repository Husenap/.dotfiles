local conf = require 'dubu.modules.lang.config'

local M = {}

M['nvim-treesitter/nvim-treesitter'] = {
    event = 'BufRead',
    config = conf.nvim_treesitter
}

M['nvim-treesitter/nvim-treesitter-textobjects'] = {
    after = 'nvim-treesitter'
}

return M
