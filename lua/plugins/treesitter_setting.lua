require'nvim-treesitter.configs'.setup {
  -- Modules and its options go here
  ensure_installed = { 'python', 'lua', 'typescript', 'tsx', 'yaml', 'json', 'rust', 'html', 'go', 'toml', 'bash', 'css', 'haskell' },
  highlight = { enable = true },
  incremental_selection = { enable = true },
  textobjects = { enable = true },
  indent = { enable = true },
  refactor = {
    highlight_definitions = { enable = true },
    highlight_current_scope = { enable = false },
    smart_rename = {
      enable = true,
      keymaps = { 
        smart_rename = "grr"
      }
    }
  }
}
