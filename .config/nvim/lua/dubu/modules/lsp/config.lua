local M = {}

function M.lspconfig()
    require('dubu.modules.lsp.lspconfig')
end

function M.lspkind()
    require('lspkind').init()
end

function M.compe()
    require('dubu.modules.lsp.compe')
end

return M
