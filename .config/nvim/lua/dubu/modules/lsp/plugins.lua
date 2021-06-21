local conf = require 'dubu.modules.lsp.config'

local M = {}

M['neovim/nvim-lspconfig'] = {
    event = 'BufReadPre',
    config = conf.lspconfig,
    requires = {
        {'kabouzeid/nvim-lspinstall'}
    }
}

M['onsails/lspkind-nvim'] = {
    config = conf.lspkind
}

M['hrsh7th/nvim-compe'] = {
    config = conf.compe
}

return M
