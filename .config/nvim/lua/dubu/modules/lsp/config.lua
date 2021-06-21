local M = {}

function M.lspconfig()
    local conf = require('dubu.modules.lsp.lspconfig')
    require('lspconfig').ccls.setup({
        init_options = {
            cache = {
                directory = ".ccls-cache";
            },
            highlight = { lsRanges = true }
        },
        on_attach = conf.on_attach,
        root_dir = vim.loop.cwd
    })
end

function M.lspkind()
    require('lspkind').init()
end

function M.compe()
    require('dubu.modules.lsp.compe')
end

return M
