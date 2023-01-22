-- Trigger configuration. Do not use <tab> if you use YouCompleteMe
vim.g.UltiSnipsExpandTrigger='<C-y>'

-- Do not look for SnipMate snippets
vim.g.UltiSnipsEnableSnipMate = 1

-- Shortcut to jump forward and backward in tabstop positions
vim.g.UltiSnipsJumpForwardTrigger='<C-j>'
vim.g.UltiSnipsJumpBackwardTrigger='<C-k>'

-- Configuration for custom snippets directory, see
-- https://jdhao.github.io/2019/04/17/neovim_snippet_s1/ for details.
vim.g.UltiSnipsSnippetDirectories={'UltiSnips', 'snippets/UltiSnips'}
