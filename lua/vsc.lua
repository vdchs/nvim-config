-- configure plugins running in vscode
require("lazy").setup({
    { import = 'plugins.leap' },
    { import = 'plugins.surround' },
    { import = 'plugins.treesitter' }
})


local vscode = require('vscode-neovim')
vim.keymap.set('n', '<Leader>i', 'gi', { remap = true, desc = 'Go to last insertion point and insert' })

-- When the LSP crashes...
vim.keymap.set('n', '<Leader>vsr', function() vscode.action('workbench.action.reloadWindow') end,
    { desc = '(VS Code) Reload window' })
-- Window Management
vim.keymap.set('n', '<Leader>w', '<C-w>', { remap = true, desc = 'Window management...' })
vim.keymap.set('n', '<Leader>wo', function() vscode.action('workbench.action.closeOtherEditors') end,
    { desc = 'Close other editors' })
vim.keymap.set('n', '<Leader>wa', function() vscode.action('workbench.action.closeAllEditors') end, 
    {desc = 'Close all editors' })
-- go into zen mode
vim.keymap.set('n', '<Leader>zz',
    function() vscode.call('workbench.action.toggleZenMode') end,
    { desc = 'Zen mode' })
-- change workspaces
vim.keymap.set('n', '<Leader>pr',
    function() vscode.call('workbench.action.openRecent') end,
    {desc = 'Open recent...'})
-- goto different windows
vim.keymap.set('n', 'gzz', function()
    vscode.action('workbench.action.closeSidebar')
    vscode.action('workbench.action.closeAuxiliaryBar')
    vscode.action('workbench.action.closePanel')
end, { desc = 'Hide all side bars and panel' })
vim.keymap.set('n', 'gr',
    function() vscode.call('editor.action.goToReferences') end,
    { desc = 'Go to references' })
vim.keymap.set('n', 'gG',
    function() vscode.call('lazygit.openLazygit') end,
    { desc = 'Go to Git' })
vim.keymap.set('n', 'gt', function() vscode.call('workbench.action.terminal.toggleTerminal') end,
    { desc = 'Go to terminal' })
vim.keymap.set('n', 'gT',
    function() vscode.call('workbench.action.quickOpenTerm') end,
    { desc = 'Go to terminal selector' })
vim.keymap.set('n', 'gs',
    function() vscode.call('workbench.view.search') end,
    { desc = 'Go to search and replace' })
vim.keymap.set('n', 'gfe',
    function()
        vscode.call('workbench.files.action.focusFilesExplorer')
        vscode.call('workbench.files.action.showActiveFileInExplorer')
    end,
    { desc = 'Reveal active file in explorer' })
vim.keymap.set('n', 'gfr',
    function()
        vscode.call('workbench.files.action.focusFilesExplorer')
        vscode.call('workbench.files.action.collapseExplorerFolders')
    end,
    { desc = 'Open file explorer in root' })
-- search for things
vim.keymap.set('n', 'so',
    function() vscode.call('workbench.action.gotoSymbol') end,
    { desc = 'Search in outline' })
-- code actions
vim.keymap.set('n', '<Leader>cq', function() vscode.call('editor.action.quickFix') end, { desc = 'Quick fix' })
vim.keymap.set('n', '<Leader>cf',
    function() vscode.call('editor.action.formatDocument') end,
    { desc = 'Format code' })
vim.keymap.set('n', ']d',
    function() vscode.call('editor.action.marker.next') end,
    { desc = 'Next diagnostic message' })
vim.keymap.set('n', '[d',
    function() vscode.call('editor.action.marker.prev') end,
    { desc = 'Previous diagnostic message' })
vim.keymap.set({'n', 'v'}, '<Leader>ca',
    function() vscode.call('editor.action.refactor') end,
    { desc = 'Refactor' })
vim.keymap.set('n', '<Leader>cA',
    function() vscode.call('editor.action.sourceAction') end,
    { desc = 'Source action' })
vim.keymap.set('n', '<Leader>cr',
    function() vscode.call('editor.action.rename') end,
    { desc = 'Rename symbol' })
-- debugging
vim.keymap.set('n', '<leader>db',
    function() vscode.call('editor.debug.action.toggleBreakpoint') end,
    { desc = 'Toggle breakpoint' })
vim.keymap.set('n', '<leader>do',
    function() vscode.call('workbench.action.debug.stepOver') end,
    { desc = 'Step over' })
vim.keymap.set('n', '<leader>dO',
    function() vscode.call('workbench.action.debug.stepOut') end,
    { desc = 'Step out' })
vim.keymap.set('n', '<leader>di',
    function() vscode.call('workbench.action.debug.stepInto') end,
    { desc = 'Step into' })
