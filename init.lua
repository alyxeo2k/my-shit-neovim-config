require('init2')
local cmd = vim.cmd
cmd('cd C:/')
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
cmd('set clipboard=unnamed')
cmd('lua vim.g.neovide_scale_factor = 0.6')
cmd('set relativenumber')
cmd('set background=dark')
cmd('let g:gruvbox_material_background = "soft"')
cmd('let g:gruvbox_material_better_performance = 1')
cmd('set signcolumn=no')
cmd('let g:OmniSharp_server_use_mono = 1')
vim.opt.undofile = true
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.smartindent = true
vim.opt.swapfile = false
vim.opt.undodir = os.getenv("UserProfile") .. '/AppData/Local/nvim-data/undo'
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.updatetime = 50
cmd('colorscheme gruvbox-material')
