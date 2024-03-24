return {
	{
		"ggandor/leap.nvim",
		config = function()
			vim.keymap.set("n", "ss", function()
				require("leap").leap({ target_windows = { vim.api.nvim_get_current_win() } })
			end, { desc = "leap" })
		end,
	},
	{
		"ggandor/flit.nvim",
		config = function()
			require("flit").setup()
		end,
	},
}
