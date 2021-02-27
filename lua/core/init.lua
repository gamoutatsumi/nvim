local api = vim.api

vim.cmd('augroup MyAutoCmd')
vim.cmd('autocmd!')
vim.cmd('augroup END')

vim.cmd('filetype off')
vim.cmd('syntax off')

local vars = {
  python_host_prog = '/usr/bin/python2',
  python3_host_prog = '/usr/bin/python3',
  loaded_matchparen = 1,
  vimsyn_embed = 1,
  loaded_python_provider = 0,
  loaded_perl_provider = 0,
  loaded_ruby_provider = 0
}

for var, val in pairs(vars) do
  api.nvim_set_var(var, val)
end

require('core.options')
require('core.ime')
require('plugins.dein')
require('core.keys')

vim.cmd('filetype plugin indent on')
vim.cmd('syntax on')
