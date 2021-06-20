local conf = require 'dubu.modules.lsp.config'

local M = {}

M['kabouzeid/nvim-lspinstall'] = {
}

M['neovim/nvim-lspconfig'] = {
    event = 'BufReadPre',
    config = conf.lspconfig,
    after = 'nvim-lspinstall'
}

return M
