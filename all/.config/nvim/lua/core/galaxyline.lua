local gl = require('galaxyline')
local gls = gl.section
gl.short_line_list = {'LuaTree','vista','dbui'}

local colors = {
  bg = '#2C323C',
  fg = '#bbc2cf',
  yellow = '#ECBE7B',
  cyan = '#88c0d0',
  darkblue = '#081633',
  green = '#a3be8c',
  orange = '#FF8800',
  magenta = '#c678dd',
  blue = '#0089fa',
  red = '#ff0000',
  pink = '#fc2d80',
  purple = '#ee00ff'
}

local buffer_not_empty = function()
	if vim.fn.empty(vim.fn.expand('%:t')) ~= 1 then
		return true
	end
	return false
end

gls.left[1] = {
  ViMode = {
    provider = function()
      local mode_color = {
        n = colors.purple,
        i = colors.green,
        v = colors.cyan,
        [''] = colors.cyan,
        V = colors.cyan,
        c = colors.pink,
        no = colors.magenta,
        s = colors.orange,
        [''] = colors.orange,
        ic = colors.yellow,
        R = colors.red,
        Rv = colors.red,
        cv = colors.red,
        ce = colors.red,
        r = colors.cyan,
        rm = colors.cyan,
        ['r?'] = colors.cyan,
        ['!'] = colors.red,
        t = colors.pink
      }
      vim.api.nvim_command('hi GalaxyViMode guifg='..mode_color[vim.fn.mode()])
      return ' ▋'
    end,
    separator = ' ',
    separator_highlight = {
      colors.yellow,function()
      if not buffer_not_empty() then
        return colors.bg
      end
      return colors.bg
    end
    },
    highlight = {colors.grey, colors.bg, 'bold'},
  },
}
gls.left[2] ={
	FileIcon = {
		provider = 'FileIcon',
		condition = buffer_not_empty,
		highlight = {require('galaxyline.provider_fileinfo').get_file_icon_color,colors.bg},
	},
}
gls.left[3] = {
	FileName = {
		provider = {'FileName','FileSize'},
		condition = buffer_not_empty,
		separator = ' ',
		separator_highlight = {colors.bg,colors.bg},
		highlight = {colors.fg,colors.bg,'bold'}
	}
}
gls.left[4] = {
  GitIcon = {
    provider = function() return ' ' end,
    separator = '',
    condition = buffer_not_empty,
    highlight = {colors.orange,colors.bg},
  }
}
gls.left[5] = {
	GitBranch = {
		provider = 'GitBranch',
		condition = buffer_not_empty,
		highlight = {colors.fg,colors.bg},
	}
}

local checkwidth = function()
	local squeeze_width  = vim.fn.winwidth(0) / 2
	if squeeze_width > 40 then
		return true
	end
	return false
end

gls.left[6] = {
	DiffAdd = {
		provider = 'DiffAdd',
		condition = checkwidth,
		icon = ' ',
		highlight = {colors.green,colors.bg},
	}
}
gls.left[7] = {
	DiffModified = {
		provider = 'DiffModified',
		condition = checkwidth,
		icon = ' ',
		highlight = {colors.yellow,colors.bg},
	}
}
gls.left[8] = {
	DiffRemove = {
		provider = 'DiffRemove',
		condition = checkwidth,
		icon = ' ',
		highlight = {colors.red,colors.bg},
	}
}
gls.left[9] = {
  LeftEnd = {
    provider = function() return ' ' end,
    separator = ' ',
    separator_highlight = {colors.purple, colors.bg},
    highlight = {colors.purple, colors.bg}
  }
}
gls.left[10] = {
	DiagnosticError = {
		provider = 'DiagnosticError',
		icon = '  ',
		highlight = {colors.red,colors.bg}
	}
}
gls.left[11] = {
	Space = {
		provider = function () return ' ' end,
    highlight = {colors.fg, colors.bg}
	}
}
gls.left[12] = {
	DiagnosticWarn = {
		provider = 'DiagnosticWarn',
		icon = '  ',
		highlight = {colors.yellow,colors.bg},
	}
}

gls.right[1] = {
	FileFormat = {
		provider = 'FileFormat',
		separator = ' ',
		separator_highlight = {colors.darkblue,colors.bg},
		highlight = {colors.fg,colors.bg},
	}
}
gls.right[2] = {
  LineInfo = {
    provider = 'LineColumn',
    separator = ' | ',
    separator_highlight = {colors.fg, colors.bg},
    highlight = {colors.fg,colors.bg}
  }
}
gls.right[3] = {
  PerCent = {
    provider = 'LinePercent',
    separator = ' | ',
    separator_highlight = {colors.fg, colors.bg},
    highlight = {colors.fg, colors.bg}
  }
}
gls.right[4] = {
  ScrollBar = {
    provider = 'ScrollBar',
    highlight = {colors.blue,colors.green}
  }
}
gls.short_line_left[1] = {
  LeftEnd = {
    provider = function () return ' ' end,
    separator = ' ',
    separator_highlight = {colors.purple, colors.bg},
    highlight = {colors.purple, colors.bg}
  }
}
