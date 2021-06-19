local home     = os.getenv('HOME')
local os_name  = vim.loop.os_uname().sysname

local M   = {}

function M:load_variables()
    self.is_mac     = os_name == 'Darwin'
    self.is_linux   = os_name == 'Linux'
    self.is_windows = os_name == 'Windows'

    self.home     = home
    self.vim_path = vim.fn.stdpath('config')

    self.cache_dir   = string.format('%s/.cache/nvim/', home)
    self.modules_dir = string.format('%s/lua/dubu/modules/', self.vim_path)
    self.data_dir    = string.format('%s/site/', vim.fn.stdpath('data'))
end

M:load_variables()

return M
