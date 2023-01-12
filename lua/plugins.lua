local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
return require('lazy').setup({
  -- vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])
  {
   'nvim-telescope/telescope.nvim', tag = '0.1.0',
   dependencies = { {'nvim-lua/plenary.nvim'} },
   config = function() 
   	require('telescope').setup({
		defaults = {
			file_ignore_patterns = { "Windows" }
		}
	})
   end
  },

  {'williamboman/mason.nvim',
	config = require("mason").setup()
  },

  {
  	'windwp/nvim-autopairs',
        config = function() require('nvim-autopairs').setup {} end
  },

  'neovim/nvim-lspconfig',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  'knubie/nvim-cmp',

  'hrsh7th/vim-vsnip',
  'hrsh7th/vim-vsnip-integ',

  {
    "SmiteshP/nvim-navic",
    dependencies = "neovim/nvim-lspconfig"
  },

  'lewis6991/gitsigns.nvim',

  'nvim-tree/nvim-web-devicons',
  
  {
 	 'nvim-lualine/lualine.nvim',
 	 dependencies = { 'nvim-tree/nvim-web-devicons' },
  	 sections = {lualine_c = {require('auto-session-library').current_session_name}
  	}
  },

  {
    	'numToStr/Comment.nvim',
    	config = function()
        	require('Comment').setup()
	  end
  },

  'goolord/alpha-nvim',

  {'akinsho/bufferline.nvim',
  	dependencies = 'nvim-tree/nvim-web-devicons',
  },

  {
  "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
	    {
        -- only needed if you want to use the commands with "_with_window_picker" suffix
        's1n7ax/nvim-window-picker',
        config = function()
          require'window-picker'.setup({
            autoselect_one = true,
            include_current = false,
            filter_rules = {
              -- filter using buffer options
              bo = {
                -- if the file type is one of following, the window will be ignored
                filetype = { 'neo-tree', "neo-tree-popup", "notify" },

                -- if the buffer type is one of following, the window will be ignored
                buftype = { 'terminal', "quickfix" },
              },
            },
            other_win_hl_color = '#e35e4f',
          })
        end,
      },
    },
    config = function ()
      require'neo-tree'.setup()
    end
  },

  'nvim-telescope/telescope-fzf-native.nvim',

  {'akinsho/toggleterm.nvim', config = function()
  	require("toggleterm").setup()
  end},

  'RRethy/vim-illuminate',

  'folke/which-key.nvim',

  {
  	'rmagatti/auto-session',
  	config = function()
    		require("auto-session").setup {
      			log_level = "error",
      			auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/"},
			auto_restore_enabled = false,
    		}
  	end
  },

  'mbbill/undotree',

  'tpope/vim-fugitive',

  'rafamadriz/friendly-snippets',

  {
  "ahmedkhalf/project.nvim",
  config = function()
	require("project_nvim").setup {
		patterns = { "=projects", "=nvim" }
	}
   end
  },

  'drzel/vim-gui-zoom',

  'WhoIsSethDaniel/mason-tool-installer.nvim',

  'smithbm2316/centerpad.nvim',

  'sainnhe/gruvbox-material',

  'BlakeJC94/alpha-nvim-fortune',

  'nvim-treesitter/nvim-treesitter',

  'rebelot/kanagawa.nvim',
})


