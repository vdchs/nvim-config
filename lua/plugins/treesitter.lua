return {
    {
        'nvim-treesitter/nvim-treesitter',
        config = function()
            require('nvim-treesitter.configs').setup {
                -- A list of parser names, or "all" (the five listed parsers should always be installed)
                ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "javascript", "typescript", "svelte" },

                -- Install parsers synchronously (only applied to `ensure_installed`)
                sync_install = false,

                -- Automatically install missing parsers when entering buffer
                -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
                auto_install = true,

                ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
                -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

                -- MODULES
                highlight = { enable = true },
                incremental_selection = {
                    enable = true,
                    keymaps = {
                        init_selection = '<Leader>ti',
                        node_incremental = '<Leader>ti',
                        node_decremental = '<Leader>tI'
                    }
                },
                textobjects = {
                    move = {
                        enable = true,
                        set_jumps = true, -- set jumps in the jumplist
                        goto_next_start = {
                            [']m'] = '@function.outer',
                        },
                        goto_next_end = {
                            [']M'] = '@function.outer',
                        },
                        goto_previous_start = {
                            ['[m'] = '@function.outer',
                        },
                        goto_previous_end = {
                            ['[M'] = '@function.outer',
                        },
                    },
                    swap = {
                        enable = true,
                        swap_next = {
                            ['<Leader>tsa'] = '@parameter.inner',
                        },
                        swap_previous = {
                            ['<Leader>tsA'] = '@parameter.inner'
                        }
                    }
                }




            }
        end,
        dependencies = {
            'nvim-treesitter/nvim-treesitter-textobjects',
        },
        build = ':TSUpdate'
    },
}
