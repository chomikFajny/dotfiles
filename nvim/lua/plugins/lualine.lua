-- init.lua or in your plugins.lua file (if using lazy.nvim or similar)
return {
	'nvim-lualine/lualine.nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	config = function()
		require('lualine').setup {
			options = {
				icons_enabled = false,
				theme = 'auto', -- or 'auto', or a theme you have installed
			},
		}
	end
}
