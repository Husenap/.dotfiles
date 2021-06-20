local conf = require 'dubu.modules.ui.config'

local M = {}

M['glepnir/dashboard-nvim'] = {
    config = conf.dashboard
}

M['glepnir/galaxyline.nvim'] = {
    branch = 'main',
    config = conf.galaxyline,
    requires = 'kyazdani42/nvim-web-devicons'
}

M['lukas-reineke/indent-blankline.nvim'] = {
    event = 'BufRead',
    branch = 'lua',
    config = conf.indent_blankline
}

M['akinsho/nvim-bufferline.lua'] = {
    config = conf.nvim_bufferline,
    requires = 'kyazdani42/nvim-web-devicons'
}

M['kyazdani42/nvim-tree.lua'] = {
    cmd = {'NvimTreeToggle','NvimTreeOpen'},
    config = conf.nvim_tree,
    requires = 'kyazdani42/nvim-web-devicons'
}

M['lewis6991/gitsigns.nvim'] = {
    event = {'BufRead','BufNewFile'},
    config = conf.gitsigns,
    requires = {'nvim-lua/plenary.nvim',opt=true}
}

return M
