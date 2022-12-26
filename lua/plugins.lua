return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'rebelot/kanagawa.nvim'

  use {
   'nvim-telescope/telescope.nvim', tag = '0.1.0',
   requires = { {'nvim-lua/plenary.nvim'} }
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
  	 sections = {lualine_c = {require('auto-session-library').current_session_name}}
  }

  use {
    	'numToStr/Comment.nvim',
    	config = function()
        	require('Comment').setup()
	  end
  }

  use {
	  'goolord/alpha-nvim',
	  config = function ()
		  require('alpha').setup(require('alpha.themes.startify').config)
	  end
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
  tag = 'nightly' -- optional, updated every week. (see issue #1193) 
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
  	require("nvim-tree").setup({
  		sync_root_with_cwd = true,
  		respect_buf_cwd = true,
  		update_focused_file = {
    			enable = true,
    			update_root = true
  		},
        })  

   end
  }
end)
