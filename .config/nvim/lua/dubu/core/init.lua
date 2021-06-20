local global = require 'dubu.core.global'

local function create_directories()
    local data_dir = {
        global.cache_dir .. 'backup',
        global.cache_dir .. 'session',
        global.cache_dir .. 'swap',
        global.cache_dir .. 'tags',
        global.cache_dir .. 'undo',
    }

    if vim.fn.isdirectory(global.cache_dir) == 0 then
        os.execute('mkdir -p ' .. global.cache_dir)
        for _,v in pairs(data_dir) do
            if vim.fn.isdirectory(v) == 0 then
                os.execute('mkdir -p ' .. v)
            end
        end
    end
end

local function disable_distribution_plugins()
    vim.g.loaded_gzip              = 1
    vim.g.loaded_tar               = 1
    vim.g.loaded_tarPlugin         = 1
    vim.g.loaded_zip               = 1
    vim.g.loaded_zipPlugin         = 1
    vim.g.loaded_getscript         = 1
    vim.g.loaded_getscriptPlugin   = 1
    vim.g.loaded_vimball           = 1
    vim.g.loaded_vimballPlugin     = 1
    vim.g.loaded_matchit           = 1
    vim.g.loaded_matchparen        = 1
    vim.g.loaded_2html_plugin      = 1
    vim.g.loaded_logiPat           = 1
    vim.g.loaded_rrhelper          = 1
    vim.g.loaded_netrw             = 1
    vim.g.loaded_netrwPlugin       = 1
    vim.g.loaded_netrwSettings     = 1
    vim.g.loaded_netrwFileHandlers = 1
end

local function map_leader()
    vim.g.mapleader = ' '
    vim.api.nvim_set_keymap('n', ' ', '', {noremap = true})
    vim.api.nvim_set_keymap('x', ' ', '', {noremap = true})
end

local function load_core()
    local pack = require('dubu.core.pack')

    create_directories()
    disable_distribution_plugins()
    map_leader()

    pack.ensure_plugins()

    require('dubu.core.options')

    pack.load_compile()
end

load_core()
