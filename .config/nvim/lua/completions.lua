local o = vim.o
local api = vim.api
local fn = vim.fn

-- completion menu
o.completeopt = 'menuone,longest,preview'
o.pumheight = 10

-- compe setup
require 'compe'.setup {
	enabled = true,
	autocomplete = true,
	debug = false,
	min_length = 1,
	preselect = 'enable',
	throttle_time = 80,
	source_timeout = 200,
	incomplete_delay = 400,
	max_abbr_width = 100,
	max_kind_width = 100,
	max_menu_width = 100,
	documentation = true,
	source = {
		buffer = true,
		calc = true,
		nvim_lsp = true,
		path = true
	}
}

local t = require 'termcodes'

_G.tab_complete = function()
	if fn.pumvisible() == 1 then
		return t '<c-n>'
	else
		return t '<tab>'
	end
end

api.nvim_set_keymap('i', '<tab>', 'v:lua.tab_complete()', {expr = true})
api.nvim_set_keymap('i', '<c-space>', 'compe#complete()', {expr = true})
