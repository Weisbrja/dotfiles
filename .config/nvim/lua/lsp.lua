local fn = vim.fn

-- lua
require 'lspconfig'.sumneko_lua.setup {
	cmd = {'lua-language-server'},
	settings = {
		Lua = {
			runtime = {
				version = 'LuaJIT'
			},
			diagnostics = {
				globals = {'vim'}
			},
			workspace = {
				library = {
					[fn.expand '$VIMRUNTIME/lua'] = true,
					[fn.expand '$VIMRUNTIME/lua/vim/lsp'] = true
				}
			},
			telemetry = {
				enable = false
			}
		}
	}
}

-- html
require 'lspconfig'.html.setup {
	cmd = {'vscode-html-languageserver', '--stdio'}
}

-- c/c++
require 'lspconfig'.clangd.setup {}

-- latex
require 'lspconfig'.texlab.setup {}
