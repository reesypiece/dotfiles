-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

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

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/pochama/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?.lua;/home/pochama/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?/init.lua;/home/pochama/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?.lua;/home/pochama/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/pochama/.cache/nvim/packer_hererocks/2.0.5/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
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
  ["auto-pairs"] = {
    loaded = true,
    path = "/home/pochama/.local/share/nvim/site/pack/packer/start/auto-pairs"
  },
  ["barbar.nvim"] = {
    loaded = true,
    path = "/home/pochama/.local/share/nvim/site/pack/packer/start/barbar.nvim"
  },
  ["feline.nvim"] = {
    config = { "\27LJ\1\2I\0\0\2\0\4\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0>\0\2\1G\0\1\0\1\0\1\vpreset\vnoicon\nsetup\vfeline\frequire\0" },
    loaded = true,
    path = "/home/pochama/.local/share/nvim/site/pack/packer/start/feline.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\1\2­\1\0\0\4\0\n\0\r4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\b\0003\2\4\0003\3\3\0:\3\5\0023\3\6\0:\3\a\2:\2\t\1>\0\2\1G\0\1\0\nsigns\1\0\0\17changedelete\1\0\2\ttext\6|\ahl\19GitSignsChange\14topdelete\1\0\0\1\0\2\ttext\6-\ahl\19GitSignsDelete\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/home/pochama/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/home/pochama/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-compe"] = {
    config = { "\27LJ\1\2»\1\0\0\3\0\6\0\t4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0003\2\4\0:\2\5\1>\0\2\1G\0\1\0\vsource\1\0\a\14ultisnips\2\rnvim_lua\2\rnvim_lsp\2\vbuffer\2\nvsnip\2\tcalc\2\tpath\2\1\0\4\17autocomplete\2\14preselect\venable\fenabled\2\15min_length\3\3\nsetup\ncompe\frequire\0" },
    loaded = true,
    path = "/home/pochama/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/pochama/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    loaded = true,
    path = "/home/pochama/.local/share/nvim/site/pack/packer/start/nvim-lspinstall"
  },
  ["nvim-scrollview"] = {
    loaded = true,
    path = "/home/pochama/.local/share/nvim/site/pack/packer/start/nvim-scrollview"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/pochama/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\1\2¦\1\0\0\3\0\b\0\v4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\4\0003\2\3\0:\2\5\0013\2\6\0:\2\a\1>\0\2\1G\0\1\0\14highlight\1\0\1\venable\2\21ensure_installed\1\0\0\1\6\0\0\trust\bcpp\15typescript\blua\fhaskell\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/pochama/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/pochama/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/pochama/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/pochama/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["presence.nvim"] = {
    config = { "\27LJ\1\2›\3\0\0\3\0\4\0\b4\0\0\0%\1\1\0>\0\2\2\16\1\0\0007\0\2\0003\2\3\0>\0\3\1G\0\1\0\1\0\r\14log_level\ndebug\15main_image\tfile\16auto_update\2\23enable_line_number\1\21line_number_text\15Line %s/%s\17editing_text\15Editing %s\20git_commit_text\23Committing Changes\24plugin_manager_text\21Managing Plugins\17reading_text\18Looking at %s\22neovim_image_text%i don't want to deal with vscode\21debounce_timeout\3\n\23file_explorer_text\16Browsing %s\19workspace_text\18Workspace: %s\nsetup\rpresence\frequire\0" },
    loaded = true,
    path = "/home/pochama/.local/share/nvim/site/pack/packer/start/presence.nvim"
  },
  ["todo-comments.nvim"] = {
    loaded = true,
    path = "/home/pochama/.local/share/nvim/site/pack/packer/start/todo-comments.nvim"
  },
  ["trouble.nvim"] = {
    loaded = true,
    path = "/home/pochama/.local/share/nvim/site/pack/packer/start/trouble.nvim"
  },
  ["vim-dogrun"] = {
    loaded = true,
    path = "/home/pochama/.local/share/nvim/site/pack/packer/start/vim-dogrun"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/pochama/.local/share/nvim/site/pack/packer/start/vim-vsnip"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\1\2¦\1\0\0\3\0\b\0\v4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\4\0003\2\3\0:\2\5\0013\2\6\0:\2\a\1>\0\2\1G\0\1\0\14highlight\1\0\1\venable\2\21ensure_installed\1\0\0\1\6\0\0\trust\bcpp\15typescript\blua\fhaskell\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\1\2­\1\0\0\4\0\n\0\r4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\b\0003\2\4\0003\3\3\0:\3\5\0023\3\6\0:\3\a\2:\2\t\1>\0\2\1G\0\1\0\nsigns\1\0\0\17changedelete\1\0\2\ttext\6|\ahl\19GitSignsChange\14topdelete\1\0\0\1\0\2\ttext\6-\ahl\19GitSignsDelete\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: feline.nvim
time([[Config for feline.nvim]], true)
try_loadstring("\27LJ\1\2I\0\0\2\0\4\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0>\0\2\1G\0\1\0\1\0\1\vpreset\vnoicon\nsetup\vfeline\frequire\0", "config", "feline.nvim")
time([[Config for feline.nvim]], false)
-- Config for: nvim-compe
time([[Config for nvim-compe]], true)
try_loadstring("\27LJ\1\2»\1\0\0\3\0\6\0\t4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0003\2\4\0:\2\5\1>\0\2\1G\0\1\0\vsource\1\0\a\14ultisnips\2\rnvim_lua\2\rnvim_lsp\2\vbuffer\2\nvsnip\2\tcalc\2\tpath\2\1\0\4\17autocomplete\2\14preselect\venable\fenabled\2\15min_length\3\3\nsetup\ncompe\frequire\0", "config", "nvim-compe")
time([[Config for nvim-compe]], false)
-- Config for: presence.nvim
time([[Config for presence.nvim]], true)
try_loadstring("\27LJ\1\2›\3\0\0\3\0\4\0\b4\0\0\0%\1\1\0>\0\2\2\16\1\0\0007\0\2\0003\2\3\0>\0\3\1G\0\1\0\1\0\r\14log_level\ndebug\15main_image\tfile\16auto_update\2\23enable_line_number\1\21line_number_text\15Line %s/%s\17editing_text\15Editing %s\20git_commit_text\23Committing Changes\24plugin_manager_text\21Managing Plugins\17reading_text\18Looking at %s\22neovim_image_text%i don't want to deal with vscode\21debounce_timeout\3\n\23file_explorer_text\16Browsing %s\19workspace_text\18Workspace: %s\nsetup\rpresence\frequire\0", "config", "presence.nvim")
time([[Config for presence.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
