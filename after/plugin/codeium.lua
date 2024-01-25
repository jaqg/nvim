vim.keymap.set('i', '<a-y>', function () return vim.fn['codeium#Accept']() end, { expr = true, desc = 'Accept Codeium' })
vim.keymap.set('i', '<a-n>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true })
vim.keymap.set('i', '<a-p>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true })
vim.keymap.set('i', '<a-l>', function() return vim.fn['codeium#Clear']() end, { expr = true })
