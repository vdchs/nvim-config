return {
    'echasnovski/mini.nvim',
    version = '*',
    config = function()
        require('mini.surround').setup {
            mappings = {
                add = '<Leader>sa',
                delete = '<Leader>sd',
                replace = '<Leader>sr',
                find = '',
                find_left = '',
                highlight = '',
                update_n_lines = '',
                suffix_last = '',
                suffix_next = '',
            }
        }
    end,
}
