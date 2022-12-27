return require('packer').startup({function(use)
  -- Packer can manage itself
  use { 'wbthomason/packer.nvim' }

  use 'rebelot/kanagawa.nvim'

  use {
   'nvim-telescope/telescope.nvim', tag = '0.1.0',
   requires = { {'nvim-lua/plenary.nvim'} },
   config = function() 
   	require('telescope').setup({
		defaults = {
			file_ignore_patterns = { "Windows" }
		}
	})
   end
  }

  use { 'williamboman/mason.nvim' }
  require("mason").setup()

  use {
  	'windwp/nvim-autopairs',
        config = function() require('nvim-autopairs').setup {} end
  }

  use {'neovim/nvim-lspconfig'}
  use {'hrsh7th/cmp-nvim-lsp'}
  use {'hrsh7th/cmp-buffer'}
  use {'hrsh7th/cmp-path'}
  use {'hrsh7th/cmp-cmdline'}
  use {'knubie/nvim-cmp'}

  use { 'hrsh7th/vim-vsnip' }
  use { 'hrsh7th/vim-vsnip-integ' }

  use {
    "SmiteshP/nvim-navic",
    requires = "neovim/nvim-lspconfig"
  }

  use { 'lewis6991/gitsigns.nvim' }

  use { 'nvim-tree/nvim-web-devicons' }

  use {
 	 'nvim-lualine/lualine.nvim',
 	 requires = { 'kyazdani42/nvim-web-devicons' },
  	 sections = {lualine_c = {require('auto-session-library').current_session_name}
  	}
  }
  use {
    	'numToStr/Comment.nvim',
    	config = function()
        	require('Comment').setup()
	  end
  }

  use { 'goolord/alpha-nvim',
  	requires = {'BlakeJC94/alpha-nvim-fortune',
	config = function() 
		local status_ok, alpha = pcall(require, 'alpha')
if not status_ok then
  return
end
local po = 'center'

local startify = require('alpha.themes.startify')
local fortune = require('alpha.fortune')
local icons = require('user.icons')
local devicons = require('nvim-web-devicons')

local function surround(v)
  return ' ' .. v .. ' '
end

local logo = {
  type = 'text',
  val = {
"          .                                                      .",
"        .n                   .                 .                  n.",
"  .   .dP                  dP                   9b                 9b.    .",
" 4    qXb         .       dX                     Xb       .        dXp     t",
"dX.    9Xb      .dXb    __                         __    dXb.     dXP     .Xb",
"9XXb._       _.dXXXXb dXXXXbo.                 .odXXXXb dXXXXb._       _.dXXP",
" 9XXXXXXXXXXXXXXXXXXXVXXXXXXXXOo.           .oOXXXXXXXXVXXXXXXXXXXXXXXXXXXXP",
"  `9XXXXXXXXXXXXXXXXXXXXX'~   ~`OOO8b   d8OOO'~   ~`XXXXXXXXXXXXXXXXXXXXXP'",
"    `9XXXXXXXXXXXP' `9XX'   DIE    `98v8P'  HUMAN   `XXP' `9XXXXXXXXXXXP'",
"        ~~~~~~~       9X.          .db|db.          .XP       ~~~~~~~",
"                        )b.  .dbo.dP'`v'`9b.odb.  .dX(",
"                      ,dXXXXXXXXXXXb     dXXXXXXXXXXXb.",
"                     dXXXXXXXXXXXP'   .   `9XXXXXXXXXXXb",
"                    dXXXXXXXXXXXXb   d|b   dXXXXXXXXXXXXb",
"                    9XXb'   `XXXXXb.dX|Xb.dXXXXX'   `dXXP",
"                     `'      9XXXXXX(   )XXXXXXP      `'",
"                              XXXX X.`v'.X XXXX",
"                              XP^X'`b   d'`X^XX",
"                              X. 9  `   '  P )X",
"                              `b  `       '  d'",
"                               `             '"
      },
  opts = {
    position = po,
    hl = 'DevIconVim',
  },
}

local function info_value()
  local total_plugins = #vim.tbl_keys(packer_plugins)
  local datetime = os.date(surround(icons.ui.calendar) .. '%d-%m-%Y' .. surround(icons.ui.clock) .. '%H:%M:%S')
  local version = vim.version()
  local nvim_version_info = surround(devicons.get_icon_by_filetype('vim', {}))
    .. 'v'
    .. version.major
    .. '.'
    .. version.minor
    .. '.'
    .. version.patch

  return datetime .. ' ' .. surround(icons.ui.plug) .. total_plugins .. ' plugins' .. nvim_version_info
end

local info = {
  type = 'text',
  val = info_value(),
  opts = {
    hl = 'DevIconVim',
    position = po,
  },
}

local message = {
  type = 'text',
  val = fortune({ max_width = 60 }),
  opts = {
    position = po,
    hl = 'Statement',
  },
}

local mru = {
  type = 'group',
  val = {
    {
      type = 'text',
      val = 'Recent files',
      opts = {
        hl = 'String',
        shrink_margin = false,
        position = 'right',
      },
    },
    { type = 'padding', val = 1 },
    {
      type = 'group',
      val = function()
        return { startify.mru(1, vim.fn.getcwd(), 5) }
      end,
    },
  },
}

local function button(lhs, txt, rhs, opts)
  lhs = lhs:gsub('%s', ''):gsub('SPC', '<leader>')
  local default_opts = {
    position = 'center',
    shortcut = '[' .. lhs .. '] ',
    cursor = 1,
    align_shortcut = 'center',
    hl_shortcut = { { 'Operator', 0, 1 }, { 'Number', 1, #lhs + 1 }, { 'Operator', #lhs + 1, #lhs + 2 } },
    shrink_margin = false,
    keymap = { 'n', lhs, rhs, { noremap = true, silent = true, nowait = true } },
  }

  opts = vim.tbl_deep_extend('force', default_opts, opts or {})

  return {
    type = 'button',
    val = string.format('%-1s  %s', opts.icon or '', txt),
    on_press = function()
      local key = vim.api.nvim_replace_termcodes(rhs .. '<Ignore>', true, false, true)
      vim.api.nvim_feedkeys(key, 't', false)
    end,
    opts = opts,
  }
end

local buttons = {
  type = 'group',
  val = {
    {
      type = 'text',
      val = 'Actions',
      opts = {
        hl = 'String',
        shrink_margin = false,
        position = po,
      },
    },
    { type = 'padding', val = 1 },
    button(
      'e',
      'New file',
      ':ene <BAR> startinsert<CR>',
      { icon = icons.file.newfile, hl = { { 'Bold', 0, 3 }, { 'String', 1, 50 } } }
    ),
    button(
      'f',
      'Find file',
      "<cmd>lua require('telescope.builtin').find_files()<CR>",
      { icon = icons.file.find, hl = { { 'Bold', 0, 3 }, { 'Operator', 1, 50 } } }
    ),
    button(
      'a',
      'Live grep',
      "<cmd>lua require('telescope.builtin').live_grep({ shorten_path = true })<CR>",
      { icon = icons.ui.search, hl = { { 'Bold', 0, 3 }, { 'Operator', 1, 50 } } }
    ),
    button(
      'd',
      'Dotfiles',
      ":cd ~/AppData/Local/nvim/ | :Telescope find_files<CR>",
      { icon = icons.ui.gears, hl = { { 'Bold', 0, 3 }, { 'Operator', 1, 50 } } }
    ),
    button(
      'u',
      'Update plugins',
      ':PackerSync<CR>',
      { icon = icons.ui.update, hl = { { 'Bold', 0, 3 }, { 'Structure', 1, 50 } } }
    ),
    button(
      'l',
      'Update LSP tools',
      ':MasonToolsUpdate<CR>',
      { icon = icons.ui.update, hl = { { 'Bold', 0, 3 }, { 'Structure', 1, 50 } } }
    ),
    button('q', 'Quit', ':qa<CR>', { icon = icons.ui.sign_out, hl = { { 'Bold', 0, 1 }, { 'Statement', 1, 50 } } }),
  },
  opts = {
    position = po,
  },
}

local header = {
  type = 'group',
  val = {
    logo,
    message,
    { type = 'padding', val = 1 },
    buttons,
    { type = 'padding', val = 1 },
    info,
  },
}

local config = {
  layout = {
    header,
    { type = 'padding', val = 1 },
  },
  opts = {
    setup = function()
      vim.api.nvim_create_autocmd('User', {
        pattern = 'AlphaReady',
        desc = 'disable status, tabline and cmdline for alpha',
        callback = function()
          vim.go.laststatus = 0
          vim.opt.showtabline = 0
          vim.opt.cmdheight = 0
        end,
      })
      vim.api.nvim_create_autocmd('BufUnload', {
        buffer = 0,
        desc = 'enable status, tabline and cmdline after alpha',
        callback = function()
          vim.go.laststatus = 3
          vim.opt.showtabline = 2
          vim.opt.cmdheight = 1
        end,
      })
    end,
    margin = 5,
  },
}

alpha.setup(config)
	end},
      }
  use {'akinsho/bufferline.nvim',
  	tag = "v3.*",
  	requires = 'nvim-tree/nvim-web-devicons',
  }

  use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional, for file icons
  },
  tag = 'nightly', -- optional, updated every week. (see issue #1193) 
  config = function ()
  	require'nvim-tree'.setup{
		view = {
			width = 30,
			height = 30,
			float = {
				enable = true,
				open_win_config = {
					relative = "editor",
					width = 30,
					height = 30,
				}
			}
		},
		sync_root_with_cwd = true,
  		respect_buf_cwd = true,
  		update_focused_file = {
    			enable = true,
    			update_root = true,
			update_cwd = true
  		},
	}
  end
  }

  use {'nvim-telescope/telescope-fzf-native.nvim'}

  use {'akinsho/toggleterm.nvim', tag = '*', config = function()
  	require("toggleterm").setup()
  end}

  use { 'RRethy/vim-illuminate' }

  use { 'folke/which-key.nvim' }

  use {
  	'rmagatti/auto-session',
  	config = function()
    		require("auto-session").setup {
      			log_level = "error",
      			auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/"},
			auto_restore_enabled = false,
    		}
  	end
  }

  use { 'mbbill/undotree' }

  use { 'tpope/vim-fugitive' }

  use { 'rafamadriz/friendly-snippets' }

  use {
  "ahmedkhalf/project.nvim",
  config = function()
	require("project_nvim").setup {
		patterns = { "=projects", "=nvim" }
	}
   end
  }

  use { 'drzel/vim-gui-zoom' }

  use { 'WhoIsSethDaniel/mason-tool-installer.nvim' }

  use { 'smithbm2316/centerpad.nvim' }
end,
config = {
	display = {
		open_fn = function ()
			return require("packer.util").float({ border = "single" })
		end
	}
}})


