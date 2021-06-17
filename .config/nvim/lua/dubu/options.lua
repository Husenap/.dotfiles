local scopes = {
    o = vim.o,
    b = vim.bo,
    w = vim.wo
}

local function opt(scope, key, value)
    scopes[scope][key] = value
    if scope ~= 'o' then
        scopes['o'][key] = value
    end
end

opt('o', 'swapfile', true)
opt('o', 'dir', '/tmp')
opt('o', 'smartcase', true)
opt('o', 'laststatus', 2)
opt('o', 'hlsearch', true)
opt('o', 'incsearch', true)

opt('o', 'hidden', true)
opt('o', 'ignorecase', true)
opt('o', 'splitbelow', true)
opt('o', 'splitright', true)

opt('o', 'mouse', 'a')

opt('o', 'termguicolors', true)
opt('o', 'cmdheight', 1)

opt('o', 'updatetime', 250)
opt('o', 'clipboard', 'unnamedplus')
opt('o', 'timeoutlen', 500)

opt('w', 'cul', true)
opt('w', 'signcolumn', 'yes')

opt('w', 'number', true)
opt('w', 'numberwidth', 2)

opt('w', 'wrap', false)

opt('b', 'expandtab', true)
opt('b', 'shiftwidth', 4)
opt('b', 'smartindent', true)


