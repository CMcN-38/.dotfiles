return {
	{
		"catppuccin/nvim",
		name = "catppuccin",

		config = function()
			require("catppuccin").setup({
				flavour = "mocha",
			})
			vim.cmd.colorscheme("catppuccin")
                        --vim command for transparent background
                        vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
		end,
	},

	{
		"norcalli/nvim-colorizer.lua",
		name = "colorizer",
		config = function()
                        vim.opt.termguicolors = true
			require("colorizer").setup()
		end,
	},
        
        {
                "folke/todo-comments.nvim",
                dependencies = { "nvim-lua/plenary.nvim" },
                opts = {
                        -- your configuration comes here
                        -- or leave it empty to use the default settings
                        -- refer to the configuration section below
                }
        },
}
