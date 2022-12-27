-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?.lua;C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?\\init.lua;C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?.lua;C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?\\init.lua"
local install_cpath_pattern = "C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\lua\\5.1\\?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "C:\\Users\\Administrator\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  ["alpha-nvim"] = {
    loaded = true,
    path = "C:\\Users\\Administrator\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  ["alpha-nvim-fortune"] = {
    config = { "\27LJ\2\n\29\0\1\4\0\1\0\5'\1\0\0\18\2\0\0'\3\0\0&\1\3\1L\1\2\0\6 à\2\0\0\n\3\20\00026\0\0\0009\0\1\0006\2\2\0B\0\2\2\21\0\0\0006\1\3\0009\1\4\1-\3\0\0-\5\1\0009\5\5\0059\5\6\5B\3\2\2'\4\a\0-\5\0\0-\a\1\0009\a\5\a9\a\b\aB\5\2\2'\6\t\0&\3\6\3B\1\2\0026\2\0\0009\2\n\2B\2\1\2-\3\0\0-\5\2\0009\5\v\5'\a\0\0004\b\0\0B\5\3\0A\3\0\2'\4\f\0009\5\r\2'\6\14\0009\a\15\2'\b\14\0009\t\16\2&\3\t\3\18\4\1\0'\5\17\0-\6\0\0-\b\1\0009\b\5\b9\b\18\bB\6\2\2\18\a\0\0'\b\19\0\18\t\3\0&\4\t\4L\4\2\0\aÀ\5À\6À\r plugins\tplug\6 \npatch\nminor\6.\nmajor\6v\25get_icon_by_filetype\fversion\r%H:%M:%S\nclock\r%d-%m-%Y\rcalendar\aui\tdate\aos\19packer_plugins\rtbl_keys\bvimQ\0\0\6\1\4\1\f4\0\3\0-\1\0\0009\1\0\1)\3\1\0006\4\1\0009\4\2\0049\4\3\4B\4\1\2)\5\5\0B\1\4\0?\1\0\0L\0\2\0\3À\vgetcwd\afn\bvim\bmru\3€€À™\4‰\1\0\0\6\1\6\0\0186\0\0\0009\0\1\0009\0\2\0-\2\0\0'\3\3\0&\2\3\2+\3\2\0+\4\1\0+\5\2\0B\0\5\0026\1\0\0009\1\1\0019\1\4\1\18\3\0\0'\4\5\0+\5\1\0B\1\4\1K\0\1\0\2À\6t\18nvim_feedkeys\r<Ignore>\27nvim_replace_termcodes\bapi\bvimª\4\1\4\v\0\28\2A\18\6\0\0009\4\0\0'\a\1\0'\b\2\0B\4\4\2\18\6\4\0009\4\0\4'\a\3\0'\b\4\0B\4\4\2\18\0\4\0005\4\5\0'\5\6\0\18\6\0\0'\a\a\0&\5\a\5=\5\b\0044\5\4\0005\6\t\0>\6\1\0055\6\n\0\21\a\0\0\22\a\0\a>\a\3\6>\6\2\0055\6\v\0\21\a\0\0\22\a\0\a>\a\2\6\21\a\0\0\22\a\1\a>\a\3\6>\6\3\5=\5\f\0045\5\r\0>\0\2\5>\2\3\0055\6\14\0>\6\4\5=\5\15\0046\5\16\0009\5\17\5'\a\18\0\18\b\4\0\f\t\3\0X\t\1€4\t\0\0B\5\4\2\18\3\5\0005\5\19\0006\6\20\0009\6\21\6'\b\22\0009\t\23\3\14\0\t\0X\n\1€'\t\2\0\18\n\1\0B\6\4\2=\6\24\0053\6\25\0=\6\26\5=\3\27\0052\0\0€L\5\2\0\topts\ron_press\0\bval\ticon\r%-1s  %s\vformat\vstring\1\0\1\ttype\vbutton\nforce\20tbl_deep_extend\bvim\vkeymap\1\0\3\vnowait\2\vsilent\2\fnoremap\2\1\2\0\0\6n\16hl_shortcut\1\2\0\0\rOperator\1\3\0\0\vNumber\3\1\1\4\0\0\rOperator\3\0\3\1\rshortcut\a] \6[\1\0\4\rposition\vcenter\18shrink_margin\1\19align_shortcut\vcenter\vcursor\3\1\r<leader>\bSPC\5\a%s\tgsub\2\4g\0\0\2\0\6\0\r6\0\0\0009\0\1\0)\1\0\0=\1\2\0006\0\0\0009\0\3\0)\1\0\0=\1\4\0006\0\0\0009\0\3\0)\1\0\0=\1\5\0K\0\1\0\14cmdheight\16showtabline\bopt\15laststatus\ago\bvimg\0\0\2\0\6\0\r6\0\0\0009\0\1\0)\1\3\0=\1\2\0006\0\0\0009\0\3\0)\1\2\0=\1\4\0006\0\0\0009\0\3\0)\1\1\0=\1\5\0K\0\1\0\14cmdheight\16showtabline\bopt\15laststatus\ago\bvimŠ\2\1\0\5\0\n\0\0176\0\0\0009\0\1\0009\0\2\0'\2\3\0005\3\4\0003\4\5\0=\4\6\3B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\a\0005\3\b\0003\4\t\0=\4\6\3B\0\3\1K\0\1\0\0\1\0\2\vbuffer\3\0\tdesc3enable status, tabline and cmdline after alpha\14BufUnload\rcallback\0\1\0\2\fpattern\15AlphaReady\tdesc2disable status, tabline and cmdline for alpha\tUser\24nvim_create_autocmd\bapi\bvimœ\26\1\0\24\0^\1Ñ\0016\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1€2\0É€'\2\3\0006\3\1\0'\5\4\0B\3\2\0026\4\1\0'\6\5\0B\4\2\0026\5\1\0'\a\6\0B\5\2\0026\6\1\0'\b\a\0B\6\2\0023\a\b\0005\b\t\0005\t\n\0=\t\v\b5\t\f\0=\2\r\t=\t\14\b3\t\15\0005\n\16\0\18\v\t\0B\v\1\2=\v\v\n5\v\17\0=\2\r\v=\v\14\n5\v\18\0\18\f\4\0005\14\19\0B\f\2\2=\f\v\v5\f\20\0=\2\r\f=\f\14\v5\f\21\0004\r\4\0005\14\22\0005\15\23\0=\15\14\14>\14\1\r5\14\24\0>\14\2\r5\14\25\0003\15\26\0=\15\v\14>\14\3\r=\r\v\f3\r\27\0005\14\28\0004\15\n\0005\16\29\0005\17\30\0=\2\r\17=\17\14\16>\16\1\0155\16\31\0>\16\2\15\18\16\r\0'\18 \0'\19!\0'\20\"\0005\21%\0009\22#\0059\22$\22=\22&\0214\22\3\0005\23'\0>\23\1\0225\23(\0>\23\2\22=\22)\21B\16\5\2>\16\3\15\18\16\r\0'\18*\0'\19+\0'\20,\0005\21.\0009\22#\0059\22-\22=\22&\0214\22\3\0005\23/\0>\23\1\0225\0230\0>\23\2\22=\22)\21B\16\5\2>\16\4\15\18\16\r\0'\0181\0'\0192\0'\0203\0005\0216\0009\0224\0059\0225\22=\22&\0214\22\3\0005\0237\0>\23\1\0225\0238\0>\23\2\22=\22)\21B\16\5\2>\16\5\15\18\16\r\0'\0189\0'\19:\0'\20;\0005\21=\0009\0224\0059\22<\22=\22&\0214\22\3\0005\23>\0>\23\1\0225\23?\0>\23\2\22=\22)\21B\16\5\2>\16\6\15\18\16\r\0'\18@\0'\19A\0'\20B\0005\21D\0009\0224\0059\22C\22=\22&\0214\22\3\0005\23E\0>\23\1\0225\23F\0>\23\2\22=\22)\21B\16\5\2>\16\a\15\18\16\r\0'\18G\0'\19H\0'\20I\0005\21J\0009\0224\0059\22C\22=\22&\0214\22\3\0005\23K\0>\23\1\0225\23L\0>\23\2\22=\22)\21B\16\5\2>\16\b\15\18\16\r\0'\18M\0'\19N\0'\20O\0005\21Q\0009\0224\0059\22P\22=\22&\0214\22\3\0005\23R\0>\23\1\0225\23S\0>\23\2\22=\22)\21B\16\5\0?\16\0\0=\15\v\0145\15T\0=\2\r\15=\15\14\0145\15U\0004\16\a\0>\b\1\16>\v\2\0165\17V\0>\17\3\16>\14\4\0165\17W\0>\17\5\16>\n\6\16=\16\v\0155\16Y\0004\17\3\0>\15\1\0175\18X\0>\18\2\17=\17Z\0165\17\\\0003\18[\0=\18]\17=\17\14\0169\17]\1\18\19\16\0B\17\2\0012\0\0€K\0\1\0K\0\1\0\nsetup\1\0\1\vmargin\3\5\0\vlayout\1\0\0\1\0\2\ttype\fpadding\bval\3\1\1\0\2\ttype\fpadding\bval\3\1\1\0\2\ttype\fpadding\bval\3\1\1\0\1\ttype\ngroup\1\0\0\1\4\0\0\14Statement\3\1\0032\1\4\0\0\tBold\3\0\3\1\1\0\0\rsign_out\f:qa<CR>\tQuit\6q\1\4\0\0\14Structure\3\1\0032\1\4\0\0\tBold\3\0\3\3\1\0\0\26:MasonToolsUpdate<CR>\21Update LSP tools\6l\1\4\0\0\14Structure\3\1\0032\1\4\0\0\tBold\3\0\3\3\1\0\0\vupdate\20:PackerSync<CR>\19Update plugins\6u\1\4\0\0\rOperator\3\1\0032\1\4\0\0\tBold\3\0\3\3\1\0\0\ngears::cd ~/AppData/Local/nvim/ | :Telescope find_files<CR>\rDotfiles\6d\1\4\0\0\rOperator\3\1\0032\1\4\0\0\tBold\3\0\3\3\1\0\0\vsearch\auiQ<cmd>lua require('telescope.builtin').live_grep({ shorten_path = true })<CR>\14Live grep\6a\1\4\0\0\rOperator\3\1\0032\1\4\0\0\tBold\3\0\3\3\1\0\0\tfind;<cmd>lua require('telescope.builtin').find_files()<CR>\14Find file\6f\ahl\1\4\0\0\vString\3\1\0032\1\4\0\0\tBold\3\0\3\3\ticon\1\0\0\fnewfile\tfile\31:ene <BAR> startinsert<CR>\rNew file\6e\1\0\2\ttype\fpadding\bval\3\1\1\0\2\ahl\vString\18shrink_margin\1\1\0\2\ttype\ttext\bval\fActions\1\0\1\ttype\ngroup\0\0\1\0\1\ttype\ngroup\1\0\2\ttype\fpadding\bval\3\1\1\0\3\ahl\vString\rposition\nright\18shrink_margin\1\1\0\2\ttype\ttext\bval\17Recent files\1\0\1\ttype\ngroup\1\0\1\ahl\14Statement\1\0\1\14max_width\3<\1\0\1\ttype\ttext\1\0\1\ahl\15DevIconVim\1\0\1\ttype\ttext\0\topts\rposition\1\0\1\ahl\15DevIconVim\bval\1\22\0\0G          .                                                      .I        .n                   .                 .                  n.P  .   .dP                  dP                   9b                 9b.    .Q 4    qXb         .       dX                     Xb       .        dXp     tRdX.    9Xb      .dXb    __                         __    dXb.     dXP     .XbR9XXb._       _.dXXXXb dXXXXbo.                 .odXXXXb dXXXXb._       _.dXXPQ 9XXXXXXXXXXXXXXXXXXXVXXXXXXXXOo.           .oOXXXXXXXXVXXXXXXXXXXXXXXXXXXXPP  `9XXXXXXXXXXXXXXXXXXXXX'~   ~`OOO8b   d8OOO'~   ~`XXXXXXXXXXXXXXXXXXXXXP'N    `9XXXXXXXXXXXP' `9XX'   DIE    `98v8P'  HUMAN   `XXP' `9XXXXXXXXXXXP'J        ~~~~~~~       9X.          .db|db.          .XP       ~~~~~~~;                        )b.  .dbo.dP'`v'`9b.odb.  .dX(<                      ,dXXXXXXXXXXXb     dXXXXXXXXXXXb.=                     dXXXXXXXXXXXP'   .   `9XXXXXXXXXXXb>                    dXXXXXXXXXXXXb   d|b   dXXXXXXXXXXXXb>                    9XXb'   `XXXXXb.dX|Xb.dXXXXX'   `dXXP=                     `'      9XXXXXX(   )XXXXXXP      `'4                              XXXX X.`v'.X XXXX4                              XP^X'`b   d'`X^XX4                              X. 9  `   '  P )X4                              `b  `       '  d'3                               `             '\1\0\1\ttype\ttext\0\22nvim-web-devicons\15user.icons\18alpha.fortune\26alpha.themes.startify\vcenter\nalpha\frequire\npcall\19€€À™\4\0" },
    loaded = true,
    path = "C:\\Users\\Administrator\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\alpha-nvim-fortune",
    url = "https://github.com/BlakeJC94/alpha-nvim-fortune"
  },
  ["auto-session"] = {
    config = { "\27LJ\2\nª\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\31auto_session_suppress_dirs\1\5\0\0\a~/\15~/Projects\16~/Downloads\6/\1\0\2\14log_level\nerror\25auto_restore_enabled\1\nsetup\17auto-session\frequire\0" },
    loaded = true,
    path = "C:\\Users\\Administrator\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\auto-session",
    url = "https://github.com/rmagatti/auto-session"
  },
  ["bufferline.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Administrator\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "C:\\Users\\Administrator\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "C:\\Users\\Administrator\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "C:\\Users\\Administrator\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "C:\\Users\\Administrator\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "C:\\Users\\Administrator\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Administrator\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["kanagawa.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Administrator\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\kanagawa.nvim",
    url = "https://github.com/rebelot/kanagawa.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Administrator\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-tool-installer.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Administrator\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\mason-tool-installer.nvim",
    url = "https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Administrator\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "C:\\Users\\Administrator\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "C:\\Users\\Administrator\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-cmp",
    url = "https://github.com/knubie/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "C:\\Users\\Administrator\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-navic"] = {
    loaded = true,
    path = "C:\\Users\\Administrator\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-navic",
    url = "https://github.com/SmiteshP/nvim-navic"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "C:\\Users\\Administrator\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "C:\\Users\\Administrator\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Administrator\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Administrator\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["project.nvim"] = {
    config = { "\27LJ\2\nä\1\0\0\4\0\n\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\0016\0\0\0'\2\6\0B\0\2\0029\0\2\0005\2\a\0005\3\b\0=\3\t\2B\0\2\1K\0\1\0\24update_focused_file\1\0\2\16update_root\2\venable\2\1\0\2\20respect_buf_cwd\2\23sync_root_with_cwd\2\14nvim-tree\rpatterns\1\0\0\1\3\0\0\14=projects\n=nvim\nsetup\17project_nvim\frequire\0" },
    loaded = true,
    path = "C:\\Users\\Administrator\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\project.nvim",
    url = "https://github.com/ahmedkhalf/project.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Administrator\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Administrator\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15toggleterm\frequire\0" },
    loaded = true,
    path = "C:\\Users\\Administrator\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  undotree = {
    loaded = true,
    path = "C:\\Users\\Administrator\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "C:\\Users\\Administrator\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-gui-zoom"] = {
    loaded = true,
    path = "C:\\Users\\Administrator\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-gui-zoom",
    url = "https://github.com/drzel/vim-gui-zoom"
  },
  ["vim-illuminate"] = {
    loaded = true,
    path = "C:\\Users\\Administrator\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-illuminate",
    url = "https://github.com/RRethy/vim-illuminate"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "C:\\Users\\Administrator\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  },
  ["vim-vsnip-integ"] = {
    loaded = true,
    path = "C:\\Users\\Administrator\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-vsnip-integ",
    url = "https://github.com/hrsh7th/vim-vsnip-integ"
  },
  ["which-key.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Administrator\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: alpha-nvim-fortune
time([[Config for alpha-nvim-fortune]], true)
try_loadstring("\27LJ\2\n\29\0\1\4\0\1\0\5'\1\0\0\18\2\0\0'\3\0\0&\1\3\1L\1\2\0\6 à\2\0\0\n\3\20\00026\0\0\0009\0\1\0006\2\2\0B\0\2\2\21\0\0\0006\1\3\0009\1\4\1-\3\0\0-\5\1\0009\5\5\0059\5\6\5B\3\2\2'\4\a\0-\5\0\0-\a\1\0009\a\5\a9\a\b\aB\5\2\2'\6\t\0&\3\6\3B\1\2\0026\2\0\0009\2\n\2B\2\1\2-\3\0\0-\5\2\0009\5\v\5'\a\0\0004\b\0\0B\5\3\0A\3\0\2'\4\f\0009\5\r\2'\6\14\0009\a\15\2'\b\14\0009\t\16\2&\3\t\3\18\4\1\0'\5\17\0-\6\0\0-\b\1\0009\b\5\b9\b\18\bB\6\2\2\18\a\0\0'\b\19\0\18\t\3\0&\4\t\4L\4\2\0\aÀ\5À\6À\r plugins\tplug\6 \npatch\nminor\6.\nmajor\6v\25get_icon_by_filetype\fversion\r%H:%M:%S\nclock\r%d-%m-%Y\rcalendar\aui\tdate\aos\19packer_plugins\rtbl_keys\bvimQ\0\0\6\1\4\1\f4\0\3\0-\1\0\0009\1\0\1)\3\1\0006\4\1\0009\4\2\0049\4\3\4B\4\1\2)\5\5\0B\1\4\0?\1\0\0L\0\2\0\3À\vgetcwd\afn\bvim\bmru\3€€À™\4‰\1\0\0\6\1\6\0\0186\0\0\0009\0\1\0009\0\2\0-\2\0\0'\3\3\0&\2\3\2+\3\2\0+\4\1\0+\5\2\0B\0\5\0026\1\0\0009\1\1\0019\1\4\1\18\3\0\0'\4\5\0+\5\1\0B\1\4\1K\0\1\0\2À\6t\18nvim_feedkeys\r<Ignore>\27nvim_replace_termcodes\bapi\bvimª\4\1\4\v\0\28\2A\18\6\0\0009\4\0\0'\a\1\0'\b\2\0B\4\4\2\18\6\4\0009\4\0\4'\a\3\0'\b\4\0B\4\4\2\18\0\4\0005\4\5\0'\5\6\0\18\6\0\0'\a\a\0&\5\a\5=\5\b\0044\5\4\0005\6\t\0>\6\1\0055\6\n\0\21\a\0\0\22\a\0\a>\a\3\6>\6\2\0055\6\v\0\21\a\0\0\22\a\0\a>\a\2\6\21\a\0\0\22\a\1\a>\a\3\6>\6\3\5=\5\f\0045\5\r\0>\0\2\5>\2\3\0055\6\14\0>\6\4\5=\5\15\0046\5\16\0009\5\17\5'\a\18\0\18\b\4\0\f\t\3\0X\t\1€4\t\0\0B\5\4\2\18\3\5\0005\5\19\0006\6\20\0009\6\21\6'\b\22\0009\t\23\3\14\0\t\0X\n\1€'\t\2\0\18\n\1\0B\6\4\2=\6\24\0053\6\25\0=\6\26\5=\3\27\0052\0\0€L\5\2\0\topts\ron_press\0\bval\ticon\r%-1s  %s\vformat\vstring\1\0\1\ttype\vbutton\nforce\20tbl_deep_extend\bvim\vkeymap\1\0\3\vnowait\2\vsilent\2\fnoremap\2\1\2\0\0\6n\16hl_shortcut\1\2\0\0\rOperator\1\3\0\0\vNumber\3\1\1\4\0\0\rOperator\3\0\3\1\rshortcut\a] \6[\1\0\4\rposition\vcenter\18shrink_margin\1\19align_shortcut\vcenter\vcursor\3\1\r<leader>\bSPC\5\a%s\tgsub\2\4g\0\0\2\0\6\0\r6\0\0\0009\0\1\0)\1\0\0=\1\2\0006\0\0\0009\0\3\0)\1\0\0=\1\4\0006\0\0\0009\0\3\0)\1\0\0=\1\5\0K\0\1\0\14cmdheight\16showtabline\bopt\15laststatus\ago\bvimg\0\0\2\0\6\0\r6\0\0\0009\0\1\0)\1\3\0=\1\2\0006\0\0\0009\0\3\0)\1\2\0=\1\4\0006\0\0\0009\0\3\0)\1\1\0=\1\5\0K\0\1\0\14cmdheight\16showtabline\bopt\15laststatus\ago\bvimŠ\2\1\0\5\0\n\0\0176\0\0\0009\0\1\0009\0\2\0'\2\3\0005\3\4\0003\4\5\0=\4\6\3B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\a\0005\3\b\0003\4\t\0=\4\6\3B\0\3\1K\0\1\0\0\1\0\2\vbuffer\3\0\tdesc3enable status, tabline and cmdline after alpha\14BufUnload\rcallback\0\1\0\2\fpattern\15AlphaReady\tdesc2disable status, tabline and cmdline for alpha\tUser\24nvim_create_autocmd\bapi\bvimœ\26\1\0\24\0^\1Ñ\0016\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1€2\0É€'\2\3\0006\3\1\0'\5\4\0B\3\2\0026\4\1\0'\6\5\0B\4\2\0026\5\1\0'\a\6\0B\5\2\0026\6\1\0'\b\a\0B\6\2\0023\a\b\0005\b\t\0005\t\n\0=\t\v\b5\t\f\0=\2\r\t=\t\14\b3\t\15\0005\n\16\0\18\v\t\0B\v\1\2=\v\v\n5\v\17\0=\2\r\v=\v\14\n5\v\18\0\18\f\4\0005\14\19\0B\f\2\2=\f\v\v5\f\20\0=\2\r\f=\f\14\v5\f\21\0004\r\4\0005\14\22\0005\15\23\0=\15\14\14>\14\1\r5\14\24\0>\14\2\r5\14\25\0003\15\26\0=\15\v\14>\14\3\r=\r\v\f3\r\27\0005\14\28\0004\15\n\0005\16\29\0005\17\30\0=\2\r\17=\17\14\16>\16\1\0155\16\31\0>\16\2\15\18\16\r\0'\18 \0'\19!\0'\20\"\0005\21%\0009\22#\0059\22$\22=\22&\0214\22\3\0005\23'\0>\23\1\0225\23(\0>\23\2\22=\22)\21B\16\5\2>\16\3\15\18\16\r\0'\18*\0'\19+\0'\20,\0005\21.\0009\22#\0059\22-\22=\22&\0214\22\3\0005\23/\0>\23\1\0225\0230\0>\23\2\22=\22)\21B\16\5\2>\16\4\15\18\16\r\0'\0181\0'\0192\0'\0203\0005\0216\0009\0224\0059\0225\22=\22&\0214\22\3\0005\0237\0>\23\1\0225\0238\0>\23\2\22=\22)\21B\16\5\2>\16\5\15\18\16\r\0'\0189\0'\19:\0'\20;\0005\21=\0009\0224\0059\22<\22=\22&\0214\22\3\0005\23>\0>\23\1\0225\23?\0>\23\2\22=\22)\21B\16\5\2>\16\6\15\18\16\r\0'\18@\0'\19A\0'\20B\0005\21D\0009\0224\0059\22C\22=\22&\0214\22\3\0005\23E\0>\23\1\0225\23F\0>\23\2\22=\22)\21B\16\5\2>\16\a\15\18\16\r\0'\18G\0'\19H\0'\20I\0005\21J\0009\0224\0059\22C\22=\22&\0214\22\3\0005\23K\0>\23\1\0225\23L\0>\23\2\22=\22)\21B\16\5\2>\16\b\15\18\16\r\0'\18M\0'\19N\0'\20O\0005\21Q\0009\0224\0059\22P\22=\22&\0214\22\3\0005\23R\0>\23\1\0225\23S\0>\23\2\22=\22)\21B\16\5\0?\16\0\0=\15\v\0145\15T\0=\2\r\15=\15\14\0145\15U\0004\16\a\0>\b\1\16>\v\2\0165\17V\0>\17\3\16>\14\4\0165\17W\0>\17\5\16>\n\6\16=\16\v\0155\16Y\0004\17\3\0>\15\1\0175\18X\0>\18\2\17=\17Z\0165\17\\\0003\18[\0=\18]\17=\17\14\0169\17]\1\18\19\16\0B\17\2\0012\0\0€K\0\1\0K\0\1\0\nsetup\1\0\1\vmargin\3\5\0\vlayout\1\0\0\1\0\2\ttype\fpadding\bval\3\1\1\0\2\ttype\fpadding\bval\3\1\1\0\2\ttype\fpadding\bval\3\1\1\0\1\ttype\ngroup\1\0\0\1\4\0\0\14Statement\3\1\0032\1\4\0\0\tBold\3\0\3\1\1\0\0\rsign_out\f:qa<CR>\tQuit\6q\1\4\0\0\14Structure\3\1\0032\1\4\0\0\tBold\3\0\3\3\1\0\0\26:MasonToolsUpdate<CR>\21Update LSP tools\6l\1\4\0\0\14Structure\3\1\0032\1\4\0\0\tBold\3\0\3\3\1\0\0\vupdate\20:PackerSync<CR>\19Update plugins\6u\1\4\0\0\rOperator\3\1\0032\1\4\0\0\tBold\3\0\3\3\1\0\0\ngears::cd ~/AppData/Local/nvim/ | :Telescope find_files<CR>\rDotfiles\6d\1\4\0\0\rOperator\3\1\0032\1\4\0\0\tBold\3\0\3\3\1\0\0\vsearch\auiQ<cmd>lua require('telescope.builtin').live_grep({ shorten_path = true })<CR>\14Live grep\6a\1\4\0\0\rOperator\3\1\0032\1\4\0\0\tBold\3\0\3\3\1\0\0\tfind;<cmd>lua require('telescope.builtin').find_files()<CR>\14Find file\6f\ahl\1\4\0\0\vString\3\1\0032\1\4\0\0\tBold\3\0\3\3\ticon\1\0\0\fnewfile\tfile\31:ene <BAR> startinsert<CR>\rNew file\6e\1\0\2\ttype\fpadding\bval\3\1\1\0\2\ahl\vString\18shrink_margin\1\1\0\2\ttype\ttext\bval\fActions\1\0\1\ttype\ngroup\0\0\1\0\1\ttype\ngroup\1\0\2\ttype\fpadding\bval\3\1\1\0\3\ahl\vString\rposition\nright\18shrink_margin\1\1\0\2\ttype\ttext\bval\17Recent files\1\0\1\ttype\ngroup\1\0\1\ahl\14Statement\1\0\1\14max_width\3<\1\0\1\ttype\ttext\1\0\1\ahl\15DevIconVim\1\0\1\ttype\ttext\0\topts\rposition\1\0\1\ahl\15DevIconVim\bval\1\22\0\0G          .                                                      .I        .n                   .                 .                  n.P  .   .dP                  dP                   9b                 9b.    .Q 4    qXb         .       dX                     Xb       .        dXp     tRdX.    9Xb      .dXb    __                         __    dXb.     dXP     .XbR9XXb._       _.dXXXXb dXXXXbo.                 .odXXXXb dXXXXb._       _.dXXPQ 9XXXXXXXXXXXXXXXXXXXVXXXXXXXXOo.           .oOXXXXXXXXVXXXXXXXXXXXXXXXXXXXPP  `9XXXXXXXXXXXXXXXXXXXXX'~   ~`OOO8b   d8OOO'~   ~`XXXXXXXXXXXXXXXXXXXXXP'N    `9XXXXXXXXXXXP' `9XX'   DIE    `98v8P'  HUMAN   `XXP' `9XXXXXXXXXXXP'J        ~~~~~~~       9X.          .db|db.          .XP       ~~~~~~~;                        )b.  .dbo.dP'`v'`9b.odb.  .dX(<                      ,dXXXXXXXXXXXb     dXXXXXXXXXXXb.=                     dXXXXXXXXXXXP'   .   `9XXXXXXXXXXXb>                    dXXXXXXXXXXXXb   d|b   dXXXXXXXXXXXXb>                    9XXb'   `XXXXXb.dX|Xb.dXXXXX'   `dXXP=                     `'      9XXXXXX(   )XXXXXXP      `'4                              XXXX X.`v'.X XXXX4                              XP^X'`b   d'`X^XX4                              X. 9  `   '  P )X4                              `b  `       '  d'3                               `             '\1\0\1\ttype\ttext\0\22nvim-web-devicons\15user.icons\18alpha.fortune\26alpha.themes.startify\vcenter\nalpha\frequire\npcall\19€€À™\4\0", "config", "alpha-nvim-fortune")
time([[Config for alpha-nvim-fortune]], false)
-- Config for: project.nvim
time([[Config for project.nvim]], true)
try_loadstring("\27LJ\2\nä\1\0\0\4\0\n\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\0016\0\0\0'\2\6\0B\0\2\0029\0\2\0005\2\a\0005\3\b\0=\3\t\2B\0\2\1K\0\1\0\24update_focused_file\1\0\2\16update_root\2\venable\2\1\0\2\20respect_buf_cwd\2\23sync_root_with_cwd\2\14nvim-tree\rpatterns\1\0\0\1\3\0\0\14=projects\n=nvim\nsetup\17project_nvim\frequire\0", "config", "project.nvim")
time([[Config for project.nvim]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15toggleterm\frequire\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: auto-session
time([[Config for auto-session]], true)
try_loadstring("\27LJ\2\nª\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\31auto_session_suppress_dirs\1\5\0\0\a~/\15~/Projects\16~/Downloads\6/\1\0\2\14log_level\nerror\25auto_restore_enabled\1\nsetup\17auto-session\frequire\0", "config", "auto-session")
time([[Config for auto-session]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
