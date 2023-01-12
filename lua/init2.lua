require("remap")
require("plugins")
require("configs.init")
print("Hello")

local pid = vim.fn.getpid()
local omnisharp_bin = 'C:/Users/Administrator/AppData/Local/nvim-data/mason/packages/omnisharp/omnisharp.cmd'
local nvim_lsp = require 'lspconfig'

require 'lspconfig'.pyright.setup {}
require 'lspconfig'.clangd.setup {}
require 'lspconfig'.rust_analyzer.setup {}
require 'lspconfig'.vimls.setup {}
require 'lspconfig'.sumneko_lua.setup {}
require 'lspconfig'.omnisharp.setup {
  cmd = { omnisharp_bin, "--languageserver", "--hostPID", tostring(pid) };
  root_dir = nvim_lsp.util.root_pattern("*.csproj","*.sln");
  ...
}

require'nvim-treesitter.configs'.setup {
    auto_install = false,
    highlight = {
       enable = true
    }
}

require('telescope').load_extension('projects')

require('lualine').setup({ options = { theme = require'no' } })
require('nvim-treesitter.install').compilers = { "clang" }

vim.opt.termguicolors = true
require("bufferline").setup({ options = {
	separator_style = 'slant',
	always_show_bufferline = true,
	tab_size = 14,
	sort_by = 'insert_after_current',
	diagnostics = "nvim_lsp",
	diagnostics_indicator = function(count, level, diagnostics_dict, context)
		local icon = level:match("error") and "" or ""
		if context.buffer:current() then
			return ''
		end

		return "" .. icon .. count
	end,
} })
-- require("nvim-tree").setup({
-- 	sort_by = "case_sensitive",
-- 	view = {
-- 		adaptive_size = true,
-- 		mappings = {
-- 			list = {
-- 				{ key = "u", action = "dir_up" },
-- 			},
-- 		},
-- 	},
-- 	renderer = {
-- 		group_empty = true,
-- 	},
-- 	filters = {
-- 		dotfiles = true,
-- 	},
-- })
