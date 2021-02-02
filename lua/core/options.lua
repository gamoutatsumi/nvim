local api = vim.api

local opts = {
  splitright = true,
  splitbelow = true,
  clipboard = 'unnamedplus',
  hlsearch = true,
  mouse = 'a',
  whichwrap = 'b,s,h,l,<,>,[,]',
  ignorecase = true,
  smartcase = true,
  pumheight = 10,
  lazyredraw = true,
  showcmd = false,
  guicursor = vim.o.guicursor..',a:blinkon0',
  encoding = 'utf-8',
  fileencoding = 'utf-8',
  fileencodings = 'utf-8,iso-2022-jp,cp932,sjis,euc-jp',
  undodir = vim.env.HOME..'/.local/share/nvim/backup',
  termguicolors = true,
  foldlevelstart = 99
}

local wopts = {
  cursorline = true,
  signcolumn = 'yes',
  number = true,
  foldmethod = 'marker',
}

local bopts = {
  autoindent = true,
  smartindent = true,
  tabstop = '2',
  shiftwidth = '2',

  expandtab = true,
  undofile = true,
  matchpairs = vim.bo.matchpairs .. ',「:」,『:』,（:）,【:】,《:》,〈:〉,［:］,‘:’,“:”'
}

for opt, val in pairs(opts) do
  vim.api.nvim_set_option(opt, val)
end

for opt, val in pairs(wopts) do
  if type(val) == 'boolean' then
    vim.cmd('set ' .. opt)
    else
    vim.cmd('set ' .. opt .. '=' .. val)
  end
end

for opt, val in pairs(bopts) do
  if type(val) == 'boolean' then
    vim.cmd('set ' .. opt)
    else
    vim.cmd('set ' .. opt .. '=' .. val)
  end
end
