local fn = vim.fn

-- automatically install packer
local install_path = fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
	fn.system {'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path}
end
