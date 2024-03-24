return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.6',
	config = function ()
		vim.keymap.set('n', '<C-p>', require('telescope/builtin').find_files, {desc = 'Telescope find files'})
		vim.keymap.set('n', 'sb', require('telescope/builtin').buffers, {desc = 'Telescope find buffers'})
		vim.keymap.set('n', '<Leader>ss',
		function ()
			require('telescope/builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown({}))
		end,
		{desc = 'Telescope live grep'})
		vim.keymap.set('n', 'sk', require('telescope/builtin').keymaps, {desc = 'Search in keymaps'})
	end,
	dependencies = {
		'nvim-lua/plenary.nvim'
	}
}
