-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"
-- EXAMPLE
local servers = { "pylsp", "cmake" }
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

lspconfig.clangd.setup {
  on_attach = function(a, bufnr)
    local bufopts = { noremap = true, silent = true, buffer = bufnr }
    vim.keymap.set("n", "<leader>df", vim.lsp.buf.hover, bufopts)
    nvlsp.on_attach(a, bufnr)
  end,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
  filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto", "cu", "cuh" },
  root_dir = lspconfig.util.root_pattern("compile_commands.json", "build"),
}
