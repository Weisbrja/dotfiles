local g = vim.g
local fn = vim.fn

-- disable some plugins
g.loaded_gzip = 1
g.loaded_tar = 1
g.loaded_tarPlugin = 1
g.loaded_zip = 1
g.loaded_zipPlugin = 1
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1
g.loaded_netrwSettings = 1
g.loaded_netrwFileHandlers = 1
g.loaded_2html_plugin = 1

-- disable some health checks
g.loaded_node_provider = 0
g.loaded_perl_provider = 0
g.loaded_ruby_provider = 0
g.loaded_python_provider = 0
--g.loaded_python3_provider = 0

-- plugins
local use = require 'packer'.use
require 'packer'.startup(function()
	use 'wbthomason/packer.nvim'
	use 'sheerun/vim-polyglot'
--	use {'npxbr/gruvbox.nvim', requires = {'rktjmp/lush.nvim'}}
	use 'morhetz/gruvbox'
	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/nvim-compe'
	use 'norcalli/nvim-colorizer.lua'
--	use 'l3mon4d3/luasnip'
end)

require 'colorizer'.setup {}
