local gl = require('galaxyline')
local gls = gl.section
gl.short_line_list = { 'fern' }

local colors = {
  bg = '#282c34',
  fg = '#092236',
  white = '#c3ccdc',
  yellow = '#fabd2f',
  cyan = '#008080',
  darkblue = '#092236',
  green = '#afd700',
  orange = '#FF8800',
  purple = '#ae81ff',
  magenta = '#d16d9e',
  grey = '#c0c0c0',
  blue = '#82aaff',
  cadetblue = '#a1aab8',
  slateblue = '#2c3043'
}

local buffer_not_empty = function()
  if vim.fn.empty(vim.fn.expand('%:t')) ~= 1 then
    return true
  end
  return false
end

local eskk_enabled = function()
  if vim.fn.exists('g:loaded_eskk') == 1 and vim.g.loaded_eskk == 1 then
    return true
  end
  return false
end

local provider_eskk_mode = function()
  if not eskk_enabled() and vim.fn.exists('b:eskk_status') ~= 1 then
    vim.api.nvim_buf_set_var(0, 'eskk_status', '')
    return vim.api.nvim_buf_get_var(0, 'eskk_status')
  else
    vim.api.nvim_buf_set_var(0, 'eskk_status', vim.fn['eskk#statusline']())
  end
  return vim.api.nvim_buf_get_var(0, 'eskk_status')
end

gls.left[1] = {
  FirstElement = {
    provider = function() return ' ' end,
    highlight = { colors.blue, colors.blue }
  }
}
gls.left[2] = {
  ViMode = {
    provider = function()
      local alias = { n = 'NORMAL', i = 'INSERT', c= 'COMMAND', V= 'L-VISUAL', [''] = 'B-VISUAL', v = 'VISUAL', s = 'SELECT' }
      return alias[vim.fn.mode()] .. ' '
    end,
    separator = ' ',
    separator_highlight = { colors.blue, colors.slateblue },
    highlight = { colors.fg, colors.blue, 'bold' },
  }
}
gls.left[3] = {
  DiffAdd = {
    provider = 'DiffAdd',
    icon = '+',
    highlight = { colors.white, colors.slateblue },
  }
}

gls.left[4] = {
  DiffModified = {
    provider = 'DiffModified',
    icon = '~',
    highlight = { colors.white, colors.slateblue },
  }
}

gls.left[5] = {
  DiffRemove = {
    provider = 'DiffRemove',
    icon = '-',
    highlight = { colors.white, colors.slateblue },
  }
}

gls.left[6] = {
  GitIcon = {
    provider = function() return '  ' end,
    condition = buffer_not_empty,
    highlight = { colors.white, colors.slateblue },
  }
}

gls.left[7] = {
  GitBranch = {
    provider = 'GitBranch',
    condition = buffer_not_empty,
    separator = '  ',
    highlight = { colors.white, colors.slateblue },
  }
}

--gls.left[8] = {
  --EskkStatus = {
    --provider = function() return provider_eskk_mode() end,
    --highlight = { colors.white, colors.slateblue },
  --}
--}

gls.left[8] = {
  FileName = {
    provider = 'FileName',
    condition = buffer_not_empty,
    highlight = { colors.white, colors.slateblue }
  }
}

gls.right[1] = {
  FileTypeName = {
    provider = function() return require('galaxyline.provider_buffer').get_buffer_filetype():lower() end,
    condition = buffer_not_empty,
    highlight = { colors.white, colors.slateblue },
  }
}

gls.right[2] = {
  FileIcon = {
    provider = 'FileIcon',
    separator = ' ',
    condition = buffer_not_empty,
    highlight = { require('galaxyline.provider_fileinfo').get_file_icon_color, colors.slateblue },
  }
}

gls.right[3] = {
  FileEncode = {
    provider = function() return require('galaxyline.provider_fileinfo').get_file_encode():lower() end,
    highlight = { colors.white, colors.slateblue },
    separator = '',
    separator_highlight = { colors.white, colors.slateblue } 
  }
}

gls.right[4]= {
  FileFormatIcon = {
    provider = function()
      return vim.fn['WebDevIconsGetFileFormatSymbol']()
    end,
    separator = ' ',
    separator_highlight = { colors.white, colors.slateblue },
    highlight = { colors.white, colors.slateblue },
  }
}

gls.right[5] = {
  Percent = {
    provider = 'LinePercent',
    separator = ' ',
    separator_highlight = { colors.blue, colors.slateblue },
    highlight = { colors.fg, colors.blue },
  }
}

gls.right[6] = {
  LineInfo = {
    provider = 'LineColumn',
    highlight = { colors.fg, colors.blue },
  }
}

gls.right[7] = {
  DiagnosticError = {
    provider = 'DiagnosticError',
    separator = ' ',
    separator_highlight = { colors.slateblue, colors.blue },
    icon = ' E:',
    highlight = { colors.white, colors.slateblue }
  }
}

gls.right[8] = {
  DiagnosticWarn = {
    provider = 'DiagnosticWarn',
    icon = ' W:',
    highlight = { colors.white, colors.slateblue },
  }
}

gls.right[9] = {
  DiagnosticHint = {
    provider = 'DiagnosticHint',
    icon = ' H:',
    highlight = { colors.white, colors.slateblue },
  }
}

gls.right[11] = {
  Space = {
    provider = function () return ' ' end,
    highlight = { colors.slateblue, colors.slateblue }
  }
}

gls.short_line_left[1] = {
  FirstElement = {
    provider = function() return '▋' end,
    highlight = { colors.blue, colors.blue }
  }
}

gls.short_line_left[2] = {
  BufferType = {
    provider = { 'FileTypeName', function() return ' ' end },
    separator = '',
    separator_highlight = { colors.blue, colors.slateblue },
    highlight = { colors.fg, colors.blue, 'bold' }
  }
}
