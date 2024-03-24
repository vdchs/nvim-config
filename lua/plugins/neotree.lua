return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	config = function()
		vim.keymap.set("n", "gfe", function()
			vim.cmd(":Neotree reveal float")
		end, { desc = "Show neo tree" })
	end,
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
}
