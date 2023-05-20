-- treesitter
require("nvim-treesitter.configs").setup({
	auto_install = true,
	highlight = {
		enable = true,
	},
	yati = {
		enable = true,
		default_lazy = true,
		default_fallback = "auto"
	},
	indent = {
		enable = false,
	}
})
