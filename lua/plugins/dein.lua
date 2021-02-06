local api = vim.api

local dein_dir = vim.fn.expand('~/.local/share/nvim/dein')
local dein_repo_dir = dein_dir..'/repos/github.com/Shougo/dein.vim'

local dein = require('dein')

api.nvim_set_var('dein#install_github_api_token', os.getenv('DEIN_GITHUB_TOKEN'))

if not string.find(api.nvim_get_option('runtimepath'), '/dein.vim') then
  if not (vim.fn.isdirectory(dein_repo_dir) == 1) then
    os.execute('git clone https://github.com/Shougo/dein.vim '..dein_repo_dir)
  end
  api.nvim_set_option('runtimepath', dein_repo_dir..','..api.nvim_get_option('runtimepath'))
end

if (dein.load_state(dein_dir) == 1) then
  dein.begin(dein_dir)
  local rc_dir = vim.fn.expand('~/.config/nvim')
  local toml = rc_dir..'/dein.toml'
  local lazy_toml = rc_dir..'/dein_lazy.toml'
  dein.load_toml(toml, { lazy = 0 })
  dein.load_toml(lazy_toml, { lazy = 1 })
  dein['end']()
  dein.save_state()
end

if (dein.check_install() ~= 0) then
  dein.install()
end

local removed_plugins = dein.check_clean()
if vim.fn.len(removed_plugins) > 0 then
  vim.fn.map(removed_plugins, "delete(v:val, 'rf')")
  dein.recache_runtimepath()
end
