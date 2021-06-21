local conf = require 'dubu.modules.editor.config'

local M = {}

M['norcalli/nvim-colorizer.lua'] = {
}

M['ojroques/nvim-lspfuzzy'] = {
    config = conf.nvim_lspfuzzy,
    requires = {
        {'junegunn/fzf'},
        {'junegunn/fzf.vim'},
    }
}

M['joerinn/gruvbox-material'] = {
    config = conf.gruvbox,
    requires = {
        {'jackguo380/vim-lsp-cxx-highlight'}
    }
}

return M
