vim.keymap.set('n', '<Leader>i', 'gi', { remap = true, desc = 'Go to last insertion point and insert' })

-- When the LSP crashes...
vim.keymap.set('n', '<Leader>vsr', function() require('vscode-neovim').action('workbench.action.reloadWindow') end,
    { desc = '(VS Code) Reload window' })
-- Easier entry point for window management
vim.keymap.set('n', '<Leader>w', '<C-w>', { remap = true, desc = 'Window management...' })
-- go into zen mode
vim.keymap.set('n', '<Leader>zz',
    function() require('vscode-neovim').call('workbench.action.toggleZenMode') end,
    { desc = 'Zen mode' })
-- goto different windows
vim.keymap.set('n', 'gr',
    function() require('vscode-neovim').call('editor.action.goToReferences') end,
    { desc = 'Go to references' })
vim.keymap.set('n', 'gg',
    function() require('vscode-neovim').call('workbench.view.scm') end,
    { desc = 'Go to Git' })
vim.keymap.set('n', 'gt',
    function() require('vscode-neovim').call('workbench.action.quickOpenTerm') end,
    { desc = 'Go to terminal' })
vim.keymap.set('n', 'gs',
    function() require('vscode-neovim').call('workbench.view.search') end,
    { desc = 'Go to search and replace' })
vim.keymap.set('n', '<Leader>p',
    function() require('vscode-neovim').call('workbench.action.quickOpen') end,
    { desc = 'Quick open file explorer' })
vim.keymap.set('n', 'gfe',
    function()
        require('vscode-neovim').call('workbench.files.action.focusFilesExplorer')
        require('vscode-neovim').call('workbench.files.action.showActiveFileInExplorer')
    end,
    { desc = 'Reveal active file in explorer' })
vim.keymap.set('n', 'gfr',
    function()
        require('vscode-neovim').call('workbench.files.action.focusFilesExplorer')
        require('vscode-neovim').call('workbench.files.action.collapseExplorerFolders')
    end,
    { desc = 'Open file explorer in root' })
-- search for things
vim.keymap.set('n', 'so',
    function() require('vscode-neovim').call('workbench.action.gotoSymbol') end,
    { desc = 'Search in outline' })
-- code actions
vim.keymap.set('n', '<Leader>cf',
    function() require('vscode-neovim').call('editor.action.formatDocument') end,
    { desc = 'Format code' })
vim.keymap.set('n', ']d',
    function() require('vscode-neovim').call('editor.action.marker.next') end,
    { desc = 'Next diagnostic message' })
vim.keymap.set('n', '[d',
    function() require('vscode-neovim').call('editor.action.marker.prev') end,
    { desc = 'Previous diagnostic message' })
vim.keymap.set('n', '<Leader>ca',
    function() require('vscode-neovim').call('editor.action.refactor') end,
    { desc = 'Refactor...' })
vim.keymap.set('n', '<Leader>csa',
    function() require('vscode-neovim').call('editor.action.sourceAction') end,
    { desc = 'Source action...' })
vim.keymap.set('n', '<Leader>cr',
    function() require('vscode-neovim').call('editor.action.rename') end,
    { desc = 'Rename symbol' })
-- debugging
vim.keymap.set('n', '<leader>db',
    function() require('vscode-neovim').call('editor.debug.action.toggleBreakpoint') end,
    { desc = 'Toggle breakpoint' })
vim.keymap.set('n', '<leader>do',
    function() require('vscode-neovim').call('workbench.action.debug.stepOver') end,
    { desc = 'Step over' })
vim.keymap.set('n', '<leader>dO',
    function() require('vscode-neovim').call('workbench.action.debug.stepOut') end,
    { desc = 'Step out' })
vim.keymap.set('n', '<leader>di',
    function() require('vscode-neovim').call('workbench.action.debug.stepInto') end,
    { desc = 'Step into' })
