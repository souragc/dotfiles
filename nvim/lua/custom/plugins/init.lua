return {
	'github/copilot.vim',
	{
		'mbbill/undotree',
		config = function()
			vim.keymap.set('n', '<leader><F5>', vim.cmd.UndotreeToggle)
		end,
	},
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("nvim-tree").setup {};
			vim.keymap.set('n', '<leader><F4>', vim.cmd.NvimTreeToggle)

		end,
	},
	{
		"nvim-treesitter/nvim-treesitter-context",
		config  = function()
			require'treesitter-context'.setup{}
		end,
	}
}
