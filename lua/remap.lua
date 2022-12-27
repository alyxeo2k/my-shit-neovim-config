local keymap = vim.keymap
vim.g.gui_font_default_size = 8
vim.o.guifont = "Source Code Pro"
-- Setting the <leader> key
vim.g.mapleader = " "
-- Saving
keymap.set("n", "<C-s>", ":w<CR>")
-- Closing current buffer
keymap.set("n", "<C-q>", ":bd<CR>")
-- Switching to a different tab
keymap.set("n", "<S-h>", ":BufferLineCyclePrev<CR>")
keymap.set("n", "<S-l>", ":BufferLineCycleNext<CR>")
-- Opening Nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
-- Run PackerSync
keymap.set("n", "<leader>ps", ":PackerSync<CR>")
-- Telescope bindings
keymap.set("n", "<leader>ff", ":Telescope find_files<CR>")
keymap.set("n", "<leader>fh", ":Telescope oldfiles<CR>")
keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>")
-- Restoring last session
keymap.set("n", "<leader>sl", ":RestoreSession<CR>")
-- Opening the dashboard
keymap.set("n", "<leader>;", ":Alpha<CR>")
-- Opening undo history
keymap.set("n", "<C-h>", ":UndotreeToggle<CR>")
-- Git commands
keymap.set("n", "<leader>gc", ":Git commit<CR>")
keymap.set("n", "<leader>g", ":Git<CR>")
keymap.set("n", "<leader>gp", ":Git push<CR>")
keymap.set("n", "<leader>gf", ":Git fetch<CR>")
-- Easy window navigation
keymap.set("n", "<M-h>", "<C-w>h")
keymap.set("n", "<M-j>", "<C-w>j")
keymap.set("n", "<M-k>", "<C-w>k")
keymap.set("n", "<M-l>", "<C-w>l")
-- ToggleTerm bindings for h-split v-split and floating terminals
keymap.set("n", "<M-1>", ":ToggleTerm direction=horizontal<CR>")
keymap.set("n", "<M-2>", ":ToggleTerm direction=vertical size=50<CR>")
keymap.set("n", "<M-3>", ":ToggleTerm direction=float<CR>")
-- To hide and re-focus last buffer
keymap.set("t", "<M-1>", "<C-\\><C-n><C-w>l:ToggleTerm<CR>")
-- Show all projects
keymap.set("n", "<leader>ap", function()
	require'telescope'.extensions.projects.projects{}
end)
-- For zooming in and out and reseting zoom in neovide
keymap.set({"n", "i"}, "<C-l>", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1<CR>")
keymap.set({"n", "i"}, "<C-k>", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1<CR>")
keymap.set({"n", "i"}, "<C-j>", ":lua vim.g.neovide_scale_factor = 1<CR>")
