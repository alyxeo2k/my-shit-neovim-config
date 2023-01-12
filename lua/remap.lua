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
keymap.set("n", "<leader>e", ":Neotree toggle float<CR>")
-- My common packer commands ( for quality of life )
keymap.set("n", "<leader>ps", ":Lazy sync<CR>")
keymap.set("n", "<leader>pa", ":so<CR> | :Lazy sync<CR>")
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
-- To hide the terminal
keymap.set("t", "<M-1>", "<C-\\><C-n><C-w>l<CR>")
-- Show all projects
keymap.set("n", "<leader>ap", function()
	require'telescope'.extensions.projects.projects{}
end)
-- For zooming in and out and reseting zoom in neovide
keymap.set({"n", "i"}, "<C-l>", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1<CR>")
keymap.set({"n", "i"}, "<C-k>", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1<CR>")
keymap.set({"n", "i"}, "<C-j>", ":lua vim.g.neovide_scale_factor = 1<CR>")
-- move selected text
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
-- improved half page jumping
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
-- improved pattern search hopping
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")
-- preserve copied text
keymap.set("x", "<leader>p", "\"_dP")
-- be able to copy then paste out of neovim
keymap.set("n", "<leader>y", "\"+y")
keymap.set("v", "<leader>y", "\"+y")
keymap.set("n", "<leader>Y", "\"+Y")
-- don't copy cut text
keymap.set("n", "<leader>d", "\"_d")
keymap.set("v", "<leader>d", "\"_d")
-- no more Q
keymap.set("n", "Q", "<nop>")
-- super useful find & replace word under cursor
keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")
