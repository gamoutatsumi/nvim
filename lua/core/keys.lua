vim.g.mapleader = " "

local api = vim.api

api.nvim_set_keymap('n', 'x', '"_x', { noremap = true })
api.nvim_set_keymap('n', 's', '"_s', { noremap = true })
api.nvim_set_keymap('v', 'x', '"_x', { noremap = true })
api.nvim_set_keymap('v', 's', '"_s', { noremap = true })
api.nvim_set_keymap('n', '<CR>', ':<C-u>call append(".", "")<CR>', { noremap = true, silent = true })
api.nvim_set_keymap('n', '<Tab>', ':bnext<CR>', { noremap = true, silent = true })
api.nvim_set_keymap('n', '<S-Tab>', ':bprevious<CR>', { noremap = true, silent = true })
api.nvim_set_keymap('n', 'j', 'gj', { noremap = true })
api.nvim_set_keymap('n', 'k', 'gk', { noremap = true })
api.nvim_set_keymap('n', 'i', 'len(getline(".")) ? "i" : "cc"', { noremap = true, expr = true })
api.nvim_set_keymap('n', 'A', 'len(getline(".")) ? "A" : "cc"', { noremap = true, expr = true })
api.nvim_set_keymap('n', 'Y', 'y$', { noremap = true })
api.nvim_set_keymap('n', '0', "getline('.')[0 : col('.') - 2] =~# '^\\s\\+$' ? '0' : '^'", { noremap = true, expr = true })
