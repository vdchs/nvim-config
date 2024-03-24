return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.6',
	config = function ()
		vim.keymap.set('n', '<C-p>', require('telescope/builtin').find_files, {desc = 'Telescope find files'})
		vim.keymap.set('n', 'gb', require('telescope/builtin').buffers, {desc = 'Telescopes find buffers'})
	end,
	dependencies = {
		'nvim-lua/plenary.nvim'
	}
}
