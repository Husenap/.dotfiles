require 'paq-nvim' {
	'savq/paq-nvim';

	'neovim/nvim-lspconfig';
	'nvim-lua/completion-nvim';
}


local go = vim.o
local bo = vim.bo
local wo = vim.wo

go.swapfile		= true
go.dir			= '/tmp'
go.smartcase	= true
go.laststatus	= 2
go.hlsearch		= true
go.incsearch	= true
go.ignorecase	= true

wo.number		= true
wo.wrap			= false

go.tabstop		= 4


