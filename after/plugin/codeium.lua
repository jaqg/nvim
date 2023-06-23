vim.keymap.set('i', '<s-y>', function () return vim.fn['codeium#Accept']() end, { expr = true, desc = 'Accept Codeium' })
vim.keymap.set('i', '<s-n>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true })
vim.keymap.set('i', '<s-p>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true })
vim.keymap.set('i', '<s-l>', function() return vim.fn['codeium#Clear']() end, { expr = true })
