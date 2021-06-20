local conf = require 'dubu.modules.lsp.config'

local M = {}

M['kabouzeid/nvim-lspinstall'] = {
}

M['neovim/nvim-lspconfig'] = {
    event = 'BufReadPre',
    config = conf.lspconfig,
    after = 'nvim-lspinstall'
}

M['onsails/lspkind-nvim'] = {
    config = conf.lspkind
}

M['hrsh7th/nvim-compe'] = {
    config = conf.compe
}

return M
