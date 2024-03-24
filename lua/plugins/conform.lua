return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				javascript = { "prettierd, prettier" },
			},
		})

		vim.keymap.set("n", "<Leader>cf", require("conform").format, { desc = "Format code" })
	end,
}
