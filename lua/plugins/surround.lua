return {
    'echasnovski/mini.nvim',
    version = '*',
    config = function()
        require('mini.surround').setup {
            mappings = {
                add = 'csa',
                delete = 'ds',
                replace = 'cr',
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
